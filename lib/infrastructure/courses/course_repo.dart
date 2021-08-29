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
  Future<Either<CourseFailure, List<Course>>> getCourses() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn(
      scopes: [
        ClassroomApi.classroomCoursesReadonlyScope,
        ClassroomApi.classroomCoursesScope
      ],
    ).signIn();

    final GoogleAPIClient httpClient =
        GoogleAPIClient(await googleUser!.authHeaders);

    final api = ClassroomApi(httpClient);

    final response = await api.courses.list();

    return Right(response.courses ?? []);
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
