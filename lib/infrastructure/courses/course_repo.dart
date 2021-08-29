import 'package:classroom/domain/courses/course_model.dart';
import 'package:classroom/domain/courses/courses_failure.dart';
import 'package:classroom/domain/courses/i_courses_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:googleapis/classroom/v1.dart';
import 'package:http/http.dart';
import 'package:http/io_client.dart';
import 'package:injectable/injectable.dart';

@prod
@Injectable(as: ICoursesRepo)
class CourseRepo extends ICoursesRepo {
  @override
  Future<Either<CourseFailure, List<CourseModel>>> getCourses() async {
    final List<CourseModel> courses = [];
    final List<AssignmentModel> assignments = [];
    final List<TestModel> tests = [];

    final GoogleSignInAccount? googleUser = await GoogleSignIn(
      scopes: [
        ClassroomApi.classroomCoursesReadonlyScope,
        ClassroomApi.classroomCourseworkMeReadonlyScope,
        ClassroomApi.classroomCourseworkStudentsReadonlyScope,
        ClassroomApi.classroomCourseworkStudentsScope,
        ClassroomApi.classroomCourseworkmaterialsScope,
        ClassroomApi.classroomCourseworkMeScope,
        ClassroomApi.classroomCoursesScope
      ],
    ).signIn();

    final GoogleAPIClient httpClient =
        GoogleAPIClient(await googleUser!.authHeaders);

    final api = ClassroomApi(httpClient);

    final response = await api.courses.list();

    for (final Course course in response.courses!) {
      final attachmentResponse = await api.courses.courseWork.list(course.id!);

      for (final attachment in attachmentResponse.courseWork!) {
        final AssignmentModel assignment = AssignmentModel(
            id: int.parse(attachment.id!),
            name: attachment.title!,
            description: attachment.description);

        final TestModel test = TestModel(
          id: int.parse(attachment.id!),
          name: attachment.title!,
          description: attachment.description,
        );

        if (attachment.workType == "ASSIGNMENT") {
          assignments.add(assignment);
        } else {
          tests.add(test);
        }
      }

      final CourseModel courseModel = CourseModel(
        id: int.parse(course.id!),
        name: course.name!,
        assignments: assignments,
        tests: tests,
      );

      courses.add(courseModel);
    }

    return Right(courses);
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
