import 'package:cached_network_image/cached_network_image.dart';
import 'package:classroom/application/course/course_bloc.dart';
import 'package:classroom/core/strings.dart';
import 'package:classroom/domain/auth/user_model.dart';
import 'package:classroom/domain/courses/course_model.dart';
import 'package:classroom/injection.dart';
import 'package:classroom/presentation/home/pages/create_course_page.dart';
import 'package:classroom/presentation/home/pages/invite_student_page.dart';
import 'package:classroom/presentation/home/widgets/user_avatar.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:googleapis/classroom/v1.dart';
import 'package:hive/hive.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({
    super.key,
    required this.course,
    required this.primaryColor,
    required this.courseCoverImageUrl,
  });
  final CourseModel course;
  final String courseCoverImageUrl;
  final Color primaryColor;

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
    return WillPopScope(
      onWillPop: () async {
        CourseBloc.addEventWithoutContext(
          const CourseEvent.removedUpdatedCourseName(),
        );
        return true;
      },
      child: SafeArea(
        child: BlocConsumer<CourseBloc, CourseState>(
          listener: (context, state) {
            state.removeStudentOption.fold(
              () => null,
              (some) => some.fold(
                (l) => null,
                (r) async {
                  Fluttertoast.showToast(
                    msg: "Removed student from course",
                    textColor: Colors.black87,
                    backgroundColor: Colors.white,
                    toastLength: Toast.LENGTH_LONG,
                    fontSize: 12,
                  );
                  // Navigator.pop(context);
                },
              ),
            );
          },
          builder: (context, state) {
            final isUserStudent =
                (getIt<Box>().get(HiveBoxNames.user) as UserModel).roleId == 0;
            return Scaffold(
              backgroundColor: Colors.black,
              floatingActionButton:
                  widget.course.isCreatedByMe && !isUserStudent
                      ? SpeedDial(
                          overlayColor: Colors.black12,
                          spacing: 20,
                          backgroundColor: Colors.white,
                          activeChild: const Icon(
                            Icons.close,
                            color: Colors.black,
                          ),
                          children: [
                            SpeedDialChild(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => InviteStudentPage(
                                      courseId: widget.course.id,
                                    ),
                                  ),
                                );
                              },
                              child: const Icon(
                                Icons.person_add_alt,
                                color: Colors.black,
                              ),
                              label: "Invite Student",
                            ),
                            SpeedDialChild(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => CreateCoursePage(
                                      courseId: widget.course.id,
                                      name: widget.course.name,
                                    ),
                                  ),
                                );
                              },
                              child: const Icon(
                                Icons.edit_outlined,
                                color: Colors.black,
                              ),
                              label: "Edit Course",
                            ),
                            // SpeedDialChild(
                            //   backgroundColor: Colors.red.shade400,
                            //   onTap: () {
                            //     CourseBloc.addEventWithoutContext(
                            //         CourseEvent.deleteCourse(widget.course.id));
                            //     Navigator.pop(context);
                            //   },
                            //   child: const Icon(
                            //     Icons.delete,
                            //     color: Colors.black54,
                            //   ),
                            //   label: "Delete Course",
                            // ),
                          ],
                          child: const Icon(
                            Icons.menu,
                            color: Colors.black,
                          ),
                        )
                      : null,
              body: BlocBuilder<CourseBloc, CourseState>(
                builder: (context, state) {
                  final String? updatedCourseName = state.updatedCourseName;
                  final String courseName =
                      updatedCourseName ?? widget.course.name;
                  final String teacherEmail =
                      widget.course.teachers?.first.profile?.emailAddress ??
                          "teacher@gmail.com";
                  final String myEmail =
                      (getIt<Box>().get(HiveBoxNames.user) as UserModel).email;
                  return Column(
                    children: [
                      Container(
                        height: 150,
                        padding: const EdgeInsets.all(8),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Hero(
                              tag: widget.course.id,
                              transitionOnUserGestures: true,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: CachedNetworkImage(
                                  imageUrl: widget.courseCoverImageUrl,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    courseName,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    widget.course.teachers?.first.profile
                                            ?.emailAddress ??
                                        "teacher@gmail.com",
                                    style: const TextStyle(
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
                          tabBarProperties: TabBarProperties(
                            indicatorColor: widget.primaryColor,
                            indicatorSize: TabBarIndicatorSize.label,
                          ),
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
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              itemCount: widget.course.students!.length,
                              itemBuilder: (BuildContext context, int index) {
                                final Student student =
                                    widget.course.students![index];
                                return ListTile(
                                  leading: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: UserAvatar(),
                                  ),
                                  title: Text(
                                    student.profile?.emailAddress ??
                                        "student@gmail.com",
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.white60,
                                    ),
                                  ),
                                  trailing: isUserStudent ||
                                          myEmail != teacherEmail
                                      ? null
                                      : PopupMenuButton(
                                          onSelected: (value) {
                                            CourseBloc.addEventWithoutContext(
                                              CourseEvent
                                                  .removeStudentFromCourse(
                                                courseId: student.courseId!,
                                                studentEmail: student.profile
                                                        ?.emailAddress ??
                                                    "student@gmail.com",
                                              ),
                                            );
                                          },
                                          child: const Icon(
                                            Icons.more_vert_outlined,
                                            color: Colors.white30,
                                          ),
                                          itemBuilder: (context) {
                                            return [
                                              const PopupMenuItem(
                                                height: 20,
                                                value: "Remove",
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.delete_outline,
                                                      // color: Colors.black38,
                                                      size: 14,
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text(
                                                      "Remove Student",
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ];
                                          },
                                        ),
                                );
                              },
                            ),
                            ListView.builder(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              itemCount: widget.course.teachers!.length,
                              itemBuilder: (BuildContext context, int index) {
                                final Teacher teacher =
                                    widget.course.teachers![index];
                                return ListTile(
                                  leading: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: UserAvatar(),
                                  ),
                                  title: Text(
                                    teacher.profile!.emailAddress ??
                                        "teacher@gmail.com",
                                    style: const TextStyle(
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
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
