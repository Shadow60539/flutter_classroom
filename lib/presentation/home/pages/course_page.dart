import 'package:classroom/domain/courses/course_model.dart';
import 'package:flutter/material.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({Key? key, required this.course}) : super(key: key);
  final CourseModel course;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(
            course.name,
            style: TextStyle(letterSpacing: 0.5, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
