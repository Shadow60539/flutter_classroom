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
import 'package:classroom/presentation/home/widgets/user_avatar.dart';
import 'package:custom_pop_up_menu/custom_pop_up_menu.dart';
import 'package:fancy_text_reveal/fancy_text_reveal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive/hive.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, Color>> coverUrls = [
    {"breakfast": const Color(0xffFF8A66)},
    {"code": const Color(0xff566E7A)},
    {"learnlanguage": const Color(0xff3367D5)},
    {"cooking": const Color(0xff848484)},
    {"mealfamily": const Color(0xff4FC2F8)},
    {"read": const Color(0xff566E7A)},
    {"handcraft": const Color(0xff8E22A9)},
  ];
  late CustomPopupMenuController controller;

  @override
  void initState() {
    controller = CustomPopupMenuController();
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
        final bool isUserStudent = getIt<Box>().get(HiveBoxNames.user) != null
            ? (getIt<Box>().get(HiveBoxNames.user) as UserModel).roleId == 0
            : false;

        final String userEmail = getIt<Box>().get(HiveBoxNames.user) != null
            ? (getIt<Box>().get(HiveBoxNames.user) as UserModel).email
            : "";
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.black,
            floatingActionButton: isUserStudent
                ? null
                : FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const CreateCoursePage(),
                        ),
                      );
                    },
                    child: const Icon(Icons.add, color: Colors.black),
                  ),
            body: BlocConsumer<CourseBloc, CourseState>(
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FancyTextReveal(
                            properties: const Properties(
                              milliseconds: 400,
                              // horizontalSpacing: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "My Courses".toUpperCase(),
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Container(
                                  height: 2,
                                  width: 25,
                                  color: Colors.white12,
                                ),
                              ],
                            ),
                          ),
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
                                      decoration: const BoxDecoration(
                                        color: Colors.black87,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                        ),
                                      ),
                                      child: Text(
                                        isUserStudent
                                            ? "Student".toUpperCase()
                                            : "Teacher".toUpperCase(),
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 2,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: Text(
                                            userEmail,
                                            style: const TextStyle(
                                              color: Colors.black87,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        Container(
                                          height: 1,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(1),
                                            color: Colors.black12,
                                          ),
                                        ),
                                        const SizedBox(height: 20),
                                        TextButton(
                                          style: ButtonStyle(
                                            overlayColor:
                                                MaterialStateProperty.all(
                                              Colors.black12,
                                            ),
                                          ),
                                          onPressed: () async {
                                            await Future.delayed(
                                              const Duration(
                                                milliseconds: 400,
                                              ),
                                            );
                                            AuthBloc.addEventWithoutContext(
                                              const AuthEvent.switchRole(),
                                            );
                                            controller.hideMenu();
                                            Fluttertoast.showToast(
                                              msg: !isUserStudent
                                                  ? "Logged in as Student"
                                                  : "Logged in as Teacher",
                                              textColor: Colors.black87,
                                              backgroundColor: Colors.white,
                                              toastLength: Toast.LENGTH_LONG,
                                              fontSize: 12,
                                            );
                                          },
                                          child: const Row(
                                            children: [
                                              Icon(
                                                Icons.repeat,
                                                color: Colors.black26,
                                                size: 14,
                                              ),
                                              SizedBox(width: 10),
                                              Text(
                                                "Switch role",
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        TextButton(
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                              Colors.red.shade300,
                                            ),
                                            overlayColor:
                                                MaterialStateProperty.all(
                                              Colors.white10,
                                            ),
                                          ),
                                          onPressed: () async {
                                            await Future.delayed(
                                              const Duration(
                                                milliseconds: 400,
                                              ),
                                            );
                                            controller.hideMenu();

                                            AuthBloc.addEventWithoutContext(
                                              const AuthEvent.signOut(),
                                            );
                                            Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                builder: (_) =>
                                                    const LoginPage(),
                                              ),
                                            );
                                          },
                                          child: const Row(
                                            children: [
                                              Icon(
                                                Icons.logout_outlined,
                                                color: Colors.white,
                                                size: 14,
                                              ),
                                              SizedBox(width: 10),
                                              Text(
                                                "Logout",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                            child: const UserAvatar(),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: RefreshIndicator(
                        color: Colors.black,
                        onRefresh: () async {
                          CourseBloc.addEventWithoutContext(
                            const CourseEvent.getCourses(),
                          );
                          await Future.delayed(const Duration(seconds: 8));
                        },
                        child: ListView.builder(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          // physics: const BouncingScrollPhysics(),
                          itemCount: state.courses.length,
                          itemBuilder: (BuildContext context, int index) {
                            final CourseModel course = state.courses[index];
                            return Container(
                              height: 150,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white10,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: TextButton(
                                style: ButtonStyle(
                                  overlayColor: MaterialStateProperty.all(
                                    coverUrls[index % 7]
                                        .values
                                        .first
                                        .withOpacity(0.5),
                                  ),
                                ),
                                onPressed: () async {
                                  await Future.delayed(
                                    const Duration(milliseconds: 250),
                                  );
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => CoursePage(
                                        course: course,
                                        courseCoverImageUrl:
                                            "https://www.gstatic.com/classroom/themes/img_${coverUrls[index % 7].entries.first.key}.jpg",
                                        primaryColor:
                                            coverUrls[index % 7].values.first,
                                      ),
                                    ),
                                  );
                                },
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            course.name,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            course.teachers!.first.profile
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
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
