import 'package:classroom/core/strings.dart';
import 'package:classroom/domain/auth/user_model.dart';
import 'package:classroom/domain/courses/course_model.dart';
import 'package:classroom/domain/courses/courses_failure.dart';
import 'package:classroom/domain/courses/i_courses_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:googleapis/classroom/v1.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart';
import 'package:http/io_client.dart';
import 'package:injectable/injectable.dart';

@prod
@Injectable(as: ICoursesRepo)
class CourseRepo extends ICoursesRepo {
  CourseRepo(this.box);

  final Box box;
  @override
  Future<Either<CourseFailure, List<CourseModel>>> getCourses() async {
    final List<CourseModel> courses = [];

    final GoogleSignInAccount? googleUser = await GoogleSignIn(
      scopes: [
        ClassroomApi.classroomCoursesScope,
        ClassroomApi.classroomCoursesReadonlyScope,
        ClassroomApi.classroomRostersScope,
        ClassroomApi.classroomRostersReadonlyScope,
      ],
    ).signIn();

    final GoogleAPIClient httpClient =
        GoogleAPIClient(await googleUser!.authHeaders);

    final api = ClassroomApi(httpClient);

    final UserModel cacheUser = await box.get(HiveBoxNames.user) as UserModel;

    await box.put(
      HiveBoxNames.user,
      cacheUser.copyWith(gmail: googleUser.email),
    );

    final response = await api.courses.list();

    if (response.courses != null) {
      for (final Course course in response.courses!) {
        final List<Teacher> teachers = [];
        final List<Student> students = [];

        final teachersResponse = await api.courses.teachers.list(course.id!);
        final studentsResponse = await api.courses.students.list(course.id!);

        if (teachersResponse.teachers != null) {
          for (final teacher in teachersResponse.teachers!) {
            teachers.add(teacher);
          }
        }

        if (studentsResponse.students != null) {
          for (final student in studentsResponse.students!) {
            students.add(student);
          }
        }

        final CourseModel courseModel = CourseModel(
          id: course.id!,
          name: course.name!,
          teachers: teachers,
          students: students,
        );

        courses.add(courseModel);
      }
    }

    return Right(courses);
  }

  @override
  Future<Either<CourseFailure, CourseModel>> createCourse(String name) async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn(
        scopes: [ClassroomApi.classroomCoursesScope],
      ).signIn();

      final GoogleAPIClient httpClient =
          GoogleAPIClient(await googleUser!.authHeaders);

      final api = ClassroomApi(httpClient);

      final Course request = Course(ownerId: googleUser.id, name: name);

      final newCourse = await api.courses.create(request);

      final List<Teacher> teachers = [];
      final List<Student> students = [];

      final teachersResponse = await api.courses.teachers.list(newCourse.id!);
      final studentsResponse = await api.courses.students.list(newCourse.id!);

      if (teachersResponse.teachers != null) {
        for (final teacher in teachersResponse.teachers!) {
          teachers.add(teacher);
        }
      }

      if (studentsResponse.students != null) {
        for (final student in studentsResponse.students!) {
          students.add(student);
        }
      }

      final CourseModel courseModel = CourseModel(
        id: newCourse.id!,
        name: newCourse.name!,
        teachers: teachers,
        students: students,
      );

      return Right(courseModel);
    } catch (e) {
      return const Left(CourseFailure.clientFailure());
    }
  }

  @override
  Future<Either<CourseFailure, Unit>> addStudentToCourse({
    required String courseId,
    required String studentEmail,
  }) async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn(
        scopes: [
          ClassroomApi.classroomRostersScope,
        ],
      ).signIn();

      final GoogleAPIClient httpClient =
          GoogleAPIClient(await googleUser!.authHeaders);

      final api = ClassroomApi(httpClient);

      final request = Invitation(
        courseId: courseId,
        role: "STUDENT",
        userId: studentEmail,
      );

      await api.invitations.create(request);
      return const Right(unit);
    } catch (e) {
      if (e is DetailedApiRequestError) {
        if (e.status == 409) {
          return const Left(CourseFailure.studentAlreadyInvited());
        } else if (e.status == 403) {
          return const Left(CourseFailure.studentAlreadyExist());
        } else {
          return const Left(CourseFailure.clientFailure());
        }
      } else {
        return const Left(CourseFailure.clientFailure());
      }
    }
  }

  @override
  Future<Either<CourseFailure, Unit>> deleteCourse(String courseId) async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn(
        scopes: [
          ClassroomApi.classroomCoursesScope,
        ],
      ).signIn();

      final GoogleAPIClient httpClient =
          GoogleAPIClient(await googleUser!.authHeaders);

      final api = ClassroomApi(httpClient);
      await api.courses.delete(courseId);
      return const Right(unit);
    } catch (e) {
      return const Left(CourseFailure.serverFailure());
    }
  }

  @override
  Future<Either<CourseFailure, Unit>> removeStudentFromCourse({
    required String courseId,
    required String studentEmail,
  }) async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn(
        scopes: [
          ClassroomApi.classroomRostersScope,
        ],
      ).signIn();

      final GoogleAPIClient httpClient =
          GoogleAPIClient(await googleUser!.authHeaders);

      final api = ClassroomApi(httpClient);
      await api.courses.students.delete(courseId, studentEmail);
      return const Right(unit);
    } catch (e) {
      return const Left(CourseFailure.serverFailure());
    }
  }

  @override
  Future<Either<CourseFailure, Unit>> updateCourse({
    required String name,
    required String courseId,
  }) async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn(
        scopes: [
          ClassroomApi.classroomCoursesScope,
        ],
      ).signIn();

      final GoogleAPIClient httpClient =
          GoogleAPIClient(await googleUser!.authHeaders);

      final api = ClassroomApi(httpClient);
      final Course request = Course(ownerId: googleUser.id, name: name);

      await api.courses.update(request, courseId);
      return const Right(unit);
    } catch (e) {
      return const Left(CourseFailure.serverFailure());
    }
  }
}

class GoogleAPIClient extends IOClient {
  final Map<String, String> _headers;

  GoogleAPIClient(this._headers) : super();

  @override
  Future<IOStreamedResponse> send(BaseRequest request) =>
      super.send(request..headers.addAll(_headers));

  @override
  Future<Response> head(Uri url, {Map<String, String>? headers}) =>
      super.head(url, headers: headers?..addAll(_headers));
}
