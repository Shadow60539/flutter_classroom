import 'package:classroom/domain/courses/course_model.dart';
import 'package:classroom/domain/courses/courses_failure.dart';
import 'package:dartz/dartz.dart';

abstract class ICoursesRepo {
  Future<Either<CourseFailure, List<CourseModel>>> getCourses();
}
