part of 'course_bloc.dart';

@freezed
class CourseState with _$CourseState {
  const factory CourseState({
    required List<CourseModel> courses,
    required String? updatedCourseName,
    required Option<Either<CourseFailure, List<CourseModel>>> getCoursesOption,
    required Option<Either<CourseFailure, Unit>> createCourseOption,
    required Option<Either<CourseFailure, Unit>> deleteCourseOption,
    required Option<Either<CourseFailure, Unit>> updateCourseOption,
    required Option<Either<CourseFailure, Unit>> sendInvitationOption,
    required Option<Either<CourseFailure, Unit>> removeStudentOption,
  }) = _CourseState;

  factory CourseState.initial() => const CourseState(
        courses: [],
        updatedCourseName: null,
        getCoursesOption: None(),
        createCourseOption: None(),
        deleteCourseOption: None(),
        updateCourseOption: None(),
        removeStudentOption: None(),
        sendInvitationOption: None(),
      );
}
