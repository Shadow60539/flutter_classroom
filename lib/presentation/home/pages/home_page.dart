import 'package:cached_network_image/cached_network_image.dart';
import 'package:classroom/application/course/course_bloc.dart';
import 'package:classroom/core/utils/box.dart';
import 'package:classroom/domain/courses/course_model.dart';
import 'package:classroom/presentation/home/pages/course_page.dart';
import 'package:classroom/presentation/home/pages/create_course_page.dart';
import 'package:fancy_text_reveal/fancy_text_reveal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> coverUrls = [
    "handcraft",
    "breakfast",
    "code",
    "read",
    "learnlanguage",
    "mealfamily",
    "cookings",
  ];

  @override
  void initState() {
    CourseBloc.addEventWithoutContext(const CourseEvent.getCourses());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
            Container(
              margin: const EdgeInsets.only(right: 20),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              // child: ,
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
            return ListView.builder(
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
                                      "https://www.gstatic.com/classroom/themes/img_${coverUrls[index % 7]}.jpg",
                                )));
                  },
                  child: Container(
                    height: 150,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: CachedNetworkImage(
                            imageUrl:
                                "https://www.gstatic.com/classroom/themes/img_${coverUrls[index % 7]}.jpg",
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
                                course.name,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                course.teachers!.first.profile?.emailAddress ??
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
            );
          },
        ),
      ),
    );
  }
}
