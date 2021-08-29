import 'package:classroom/domain/courses/courses_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:googleapis/classroom/v1.dart';

abstract class ICoursesRepo {
  Future<Either<CourseFailure, List<Course>>> getCourses();
}
