part of 'course_bloc.dart';

@freezed
class CourseState with _$CourseState {
  const factory CourseState({
    required List<Course> courses,
    required Option<Either<CourseFailure, List<Course>>> getCoursesOption,
  }) = _CourseState;

  factory CourseState.initial() => const CourseState(
        courses: [],
        getCoursesOption: None(),
      );
}
