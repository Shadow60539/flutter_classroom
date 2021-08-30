import 'package:cached_network_image/cached_network_image.dart';
import 'package:classroom/application/course/course_bloc.dart';
import 'package:classroom/domain/courses/course_model.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:googleapis/classroom/v1.dart';

import 'create_course_page.dart';

class CoursePage extends StatefulWidget {
  const CoursePage(
      {Key? key, required this.course, required this.courseCoverImageUrl})
      : super(key: key);
  final CourseModel course;
  final String courseCoverImageUrl;

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
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
              backgroundColor: Colors.black,
              floatingActionButton: widget.course.isCreatedByMe
                  ? FloatingActionButton(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.edit,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => CreateCoursePage(
                                courseId: widget.course.id,
                                name: widget.course.name,
                              ),
                            ));
                      },
                    )
                  : null,
              body: Column(
                children: [
                  Container(
                    height: 150,
                    padding: const EdgeInsets.all(8),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: CachedNetworkImage(
                            imageUrl: widget.courseCoverImageUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                widget.course.name,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                widget.course.teachers?.first.profile
                                        ?.emailAddress ??
                                    "teacher@gmail.com",
                                style: TextStyle(
                                  color: Colors.white54,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: ContainedTabBarView(
                      tabBarProperties:
                          TabBarProperties(indicatorColor: Colors.greenAccent),
                      tabs: [
                        Text(
                          "Students",
                          style: TextStyle(
                            fontFamily: GoogleFonts.montserrat().fontFamily,
                          ),
                        ),
                        Text(
                          "Teachers",
                          style: TextStyle(
                            fontFamily: GoogleFonts.montserrat().fontFamily,
                          ),
                        ),
                      ],
                      views: [
                        ListView.builder(
                          itemCount: widget.course.students!.length,
                          itemBuilder: (BuildContext context, int index) {
                            final Student student =
                                widget.course.students![index];
                            return ListTile(
                              leading: Icon(
                                Icons.person,
                                color: Colors.white60,
                              ),
                              title: Text(
                                student.profile!.emailAddress!,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white60,
                                ),
                              ),
                            );
                          },
                        ),
                        ListView.builder(
                          itemCount: widget.course.teachers!.length,
                          itemBuilder: (BuildContext context, int index) {
                            final Teacher teacher =
                                widget.course.teachers![index];
                            return ListTile(
                              leading: Icon(
                                Icons.person,
                                color: Colors.white60,
                              ),
                              title: Text(
                                teacher.profile!.emailAddress ??
                                    "teacher@gmail.com",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white60,
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ));
        },
      ),
    );
  }
}
