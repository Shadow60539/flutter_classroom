part of 'course_bloc.dart';

@freezed
class CourseState with _$CourseState {
  const factory CourseState({
    required List<CourseModel> courses,
    required Option<Either<CourseFailure, List<CourseModel>>> getCoursesOption,
  }) = _CourseState;

  factory CourseState.initial() => const CourseState(
        courses: [],
        getCoursesOption: None(),
      );
}
