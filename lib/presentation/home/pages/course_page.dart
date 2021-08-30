import 'package:classroom/application/course/course_bloc.dart';
import 'package:classroom/domain/courses/course_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({Key? key, required this.course}) : super(key: key);
  final CourseModel course;

  @override
  _CoursePageState createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<CourseBloc, CourseState>(
        listener: (context, state) {
          state.sendInvitationOption.fold(
              () => null,
              (a) => a.fold(
                    (l) => l.maybeMap(
                      orElse: () {},
                      studentAlreadyInvited: (_) {
                        print("Already Invited");
                      },
                    ),
                    (r) => print("Invitation Sent"),
                  ));
        },
        builder: (context, state) {
          return Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                CourseBloc.addEventWithoutContext(
                    CourseEvent.addStudentToCourse(
                        courseId: widget.course.id,
                        studentEmail: "shadow60539@gmail.com"));
              },
            ),
            body: ListView.builder(
              itemCount: widget.course.students!.length,
              itemBuilder: (BuildContext context, int index) {
                return Text(widget.course.students?[index].profile?.emailAddress ?? "<>");
              },
            ),
          );
        },
      ),
    );
  }
}
