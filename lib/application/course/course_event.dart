part of 'course_bloc.dart';

@freezed
class CourseEvent with _$CourseEvent {
  const factory CourseEvent.getCourses() = _GetCourses;
  const factory CourseEvent.createCourse(String name) = _CreateCourse;
  const factory CourseEvent.deleteCourse(String courseId) = _DeleteCourse;
  const factory CourseEvent.updateCourse({
    required String courseId,
    required String name,
  }) = _UpdateCourse;

  const factory CourseEvent.addStudentToCourse({
    required String courseId,
    required String studentEmail,
  }) = _AddStudentToCourse;

  const factory CourseEvent.removeStudentFromCourse({
    required String courseId,
    required String studentEmail,
  }) = _RemoveStudentFromCourse;
  const factory CourseEvent.removedUpdatedCourseName() =
      _RemoveUpdatedCourseName;
  const factory CourseEvent.reset() = _Reset;
}
