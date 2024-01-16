import 'package:classroom/application/course/course_bloc.dart';
import 'package:classroom/presentation/core/validator.dart';
import 'package:fancy_text_reveal/fancy_text_reveal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class InviteStudentPage extends StatefulWidget {
  const InviteStudentPage({super.key, required this.courseId});

  final String courseId;

  @override
  _InviteStudentPageState createState() => _InviteStudentPageState();
}

class _InviteStudentPageState extends State<InviteStudentPage>
    with TickerProviderStateMixin {
  bool showErrors = false;
  bool isLoading = false;

  late TextEditingController emailController;

  @override
  void initState() {
    emailController = TextEditingController()
      ..addListener(() {
        setState(() {});
      });

    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  Widget emailErrorWidget() {
    final bool isValidEmail = emailController.text.isValidEmail();
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 400),
      child: showErrors
          ? isValidEmail
              ? const SizedBox.shrink()
              : const Text(
                  "Email address is invalid",
                  style: TextStyle(color: Colors.white24),
                )
          : const SizedBox.shrink(),
    );
  }

  bool get isValid => emailController.text.isValidEmail();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CourseBloc, CourseState>(
      listener: (context, state) {
        state.sendInvitationOption.fold(
          () => null,
          (some) => some.fold(
            (l) {
              isLoading = false;
              setState(() {});
              Fluttertoast.showToast(
                msg: l.maybeMap(
                  studentAlreadyExist: (_) =>
                      "Specified email address already a student",
                  studentAlreadyInvited: (_) =>
                      "Specified student already invited",
                  orElse: () => "Oops! you are already teaching this course",
                  serverFailure: (_) =>
                      "Oops! Server down. Please try again after sometime",
                ),
                textColor: Colors.black87,
                backgroundColor: Colors.white,
                toastLength: Toast.LENGTH_LONG,
                fontSize: 12,
              );
            },
            (r) async {
              Fluttertoast.showToast(
                msg: "Invitation sent to specified mail!",
                textColor: Colors.black87,
                backgroundColor: Colors.white,
                toastLength: Toast.LENGTH_LONG,
                fontSize: 12,
              );
              Navigator.pop(context);
            },
          ),
        );
      },
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: IconButton(
                splashColor: Colors.transparent,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Icon(
                    Icons.keyboard_backspace_outlined,
                    color: Colors.white30,
                  ),
                ),
              ),
            ),
            backgroundColor: Colors.black,
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(40.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const FancyTextReveal(
                      properties: Properties(
                        milliseconds: 400,
                        // horizontalSpacing: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                      ),
                      child: Text(
                        "Invite Student",
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Please fill below details to continue",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          prefixIcon: const Padding(
                            padding: EdgeInsets.only(bottom: 3),
                            child: Icon(
                              Icons.title,
                              size: 18,
                              color: Colors.black12,
                            ),
                          ),
                          focusColor: Colors.black,
                          contentPadding: const EdgeInsets.all(10),
                          hintText: "Student email",
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    AnimatedSize(
                      duration: const Duration(milliseconds: 400),
                      child: emailErrorWidget(),
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      height: 60,
                      width: double.maxFinite,
                      child: TextButton(
                        onPressed: () {
                          showErrors = true;
                          if (isValid) {
                            isLoading = true;

                            CourseBloc.addEventWithoutContext(
                              CourseEvent.addStudentToCourse(
                                courseId: widget.courseId,
                                studentEmail: emailController.text,
                              ),
                            );
                          }
                          setState(() {});
                        },
                        style: ButtonStyle(
                          overlayColor: MaterialStateProperty.all(Colors.white),
                          backgroundColor: isValid
                              ? MaterialStateProperty.all(
                                  const Color(0xff0DF5E3))
                              : MaterialStateProperty.all(Colors.white10),
                        ),
                        child: isLoading
                            ? const SizedBox(
                                height: 15,
                                width: 15,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: Colors.black,
                                ),
                              )
                            : const Text(
                                "INVITE",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
