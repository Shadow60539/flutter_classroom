import 'package:cached_network_image/cached_network_image.dart';
import 'package:classroom/application/auth/auth_bloc.dart';
import 'package:classroom/application/course/course_bloc.dart';
import 'package:classroom/core/strings.dart';
import 'package:classroom/domain/auth/user_model.dart';
import 'package:classroom/domain/courses/course_model.dart';
import 'package:classroom/injection.dart';
import 'package:classroom/presentation/auth/pages/login_page.dart';
import 'package:classroom/presentation/home/pages/course_page.dart';
import 'package:classroom/presentation/home/pages/create_course_page.dart';
import 'package:custom_pop_up_menu/custom_pop_up_menu.dart';
import 'package:fancy_text_reveal/fancy_text_reveal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, Color>> coverUrls = [
    {"handcraft": const Color(0xff8E22A9)},
    {"breakfast": const Color(0xffFF8A66)},
    {"code": const Color(0xff566E7A)},
    {"read": const Color(0xff566E7A)},
    {"learnlanguage": const Color(0xff3367D5)},
    {"mealfamily": const Color(0xff4FC2F8)},
    {"cooking": const Color(0xff848484)},
  ];
  late CustomPopupMenuController controller;

  @override
  void initState() {
    controller = CustomPopupMenuController();
    CourseBloc.addEventWithoutContext(const CourseEvent.getCourses());
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        final bool isUserStudent =
            (getIt<Box>().get(HiveBoxNames.user) as UserModel).roleId == 0;
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              toolbarHeight: kToolbarHeight * 1.25,
              backgroundColor: Colors.transparent,
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FancyTextReveal(
                  child: Text(
                    "My Courses".toUpperCase(),
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontFamily: GoogleFonts.montserrat().fontFamily,
                    ),
                  ),
                ),
              ),
              actions: [
                CustomPopupMenu(
                  controller: controller,
                  barrierColor: Colors.black45,
                  pressType: PressType.singleClick,
                  menuBuilder: () {
                    return Container(
                      width: 200,
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 35,
                            // width: 100,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.black87,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                )),
                            child: Text(
                              isUserStudent
                                  ? "Student".toUpperCase()
                                  : "Teacher".toUpperCase(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 2),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  (getIt<Box>().get(HiveBoxNames.user)
                                          as UserModel)
                                      .email,
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 12),
                                ),
                                const SizedBox(height: 5),
                                Container(
                                  height: 1,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(1),
                                    color: Colors.black12,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                TextButton(
                                  onPressed: () {
                                    AuthBloc.addEventWithoutContext(
                                        const AuthEvent.switchRole());
                                    controller.hideMenu();
                                  },
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.switch_account,
                                        color: Colors.black26,
                                        size: 14,
                                      ),
                                      const SizedBox(width: 10),
                                      Text(
                                        "Switch role",
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                                TextButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.red.shade300)),
                                  onPressed: () {
                                    controller.hideMenu();

                                    AuthBloc.addEventWithoutContext(
                                        const AuthEvent.signOut());
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => LoginPage()));
                                  },
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.logout_outlined,
                                        color: Colors.white,
                                        size: 14,
                                      ),
                                      const SizedBox(width: 10),
                                      Text(
                                        "Logout",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 20),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    // child: ,
                  ),
                )
              ],
            ),
            backgroundColor: Colors.black,
            floatingActionButton: isUserStudent
                ? null
                : FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const CreateCoursePage()));
                    },
                    child: const Icon(Icons.add, color: Colors.black),
                  ),
            body: BlocConsumer<CourseBloc, CourseState>(
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                return RefreshIndicator(
                  onRefresh: () async {
                    CourseBloc.addEventWithoutContext(
                        const CourseEvent.getCourses());
                    await Future.delayed(const Duration(seconds: 4));
                  },
                  child: ListView.builder(
                    itemCount: state.courses.length,
                    itemBuilder: (BuildContext context, int index) {
                      final CourseModel course = state.courses[index];
                      return TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => CoursePage(
                                        course: course,
                                        courseCoverImageUrl:
                                            "https://www.gstatic.com/classroom/themes/img_${coverUrls[index % 7].entries.first.key}.jpg",
                                        primaryColor:
                                            coverUrls[index % 7].values.first,
                                      )));
                        },
                        child: Container(
                          height: 150,
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Hero(
                                tag: course.id,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        "https://www.gstatic.com/classroom/themes/img_${coverUrls[index % 7].entries.first.key}.jpg",
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
                                      course.name,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      course.teachers!.first.profile
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
                      );
                    },
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
