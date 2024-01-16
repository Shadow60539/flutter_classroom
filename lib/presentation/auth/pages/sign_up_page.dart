import 'package:classroom/application/auth/auth_bloc.dart';
import 'package:classroom/presentation/auth/pages/login_page.dart';
import 'package:classroom/presentation/auth/pages/role_selection_page.dart';
import 'package:classroom/presentation/core/validator.dart';
import 'package:fancy_text_reveal/fancy_text_reveal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> with TickerProviderStateMixin {
  bool showErrors = false;
  bool isLoading = false;
  bool showPassword = false;

  late TextEditingController emailController;
  late TextEditingController userNameController;
  late TextEditingController passwordController;

  @override
  void initState() {
    emailController = TextEditingController()
      ..addListener(() {
        setState(() {});
      });
    userNameController = TextEditingController()
      ..addListener(() {
        setState(() {});
      });
    passwordController = TextEditingController()
      ..addListener(() {
        setState(() {});
      });

    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    userNameController.dispose();
    passwordController.dispose();
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
                  "Email is invalid",
                  style: TextStyle(color: Colors.white24),
                )
          : const SizedBox.shrink(),
    );
  }

  Widget userNameErrorWidget() {
    final bool isValidUsername = userNameController.text.isValidUsername();
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 400),
      child: showErrors
          ? isValidUsername
              ? const SizedBox.shrink()
              : const Text(
                  "Username is invalid",
                  style: TextStyle(color: Colors.white24),
                )
          : const SizedBox.shrink(),
    );
  }

  Widget passwordErrorWidget() {
    final bool isValidPassword = passwordController.text.isValidPassword();
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 400),
      child: showErrors
          ? isValidPassword
              ? const SizedBox.shrink()
              : const Text(
                  "Password must contain minimum 8 characters, at least one letter and one number",
                  style: TextStyle(color: Colors.white24),
                )
          : const SizedBox.shrink(),
    );
  }

  bool get isValid =>
      emailController.text.isValidEmail() &&
      userNameController.text.isValidUsername() &&
      passwordController.text.isValidPassword();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.signUpUsingUsernameOption.fold(
          () => null,
          (some) => some.fold(
            (l) {
              isLoading = false;
              setState(() {});
              Fluttertoast.showToast(
                msg: l.maybeMap(
                    orElse: () => "",
                    invalidEmail: (_) => "No user found with specified email",
                    usernameAlreadyTaken: (_) =>
                        "Oops! specified username is not available",
                    userAlreadyExist: (_) =>
                        "Account already exist for specified email",
                    invalidPassword: (_) => "Incorrect Password",
                    noUserFound: (_) => "No user found with specified email",
                    server: (_) =>
                        "Oops! Server down. Please try again after sometime",
                    unexpected: (_) =>
                        "Oops something went wrong. Please try again after sometime",),
                textColor: Colors.black87,
                backgroundColor: Colors.white,
                toastLength: Toast.LENGTH_LONG,
                fontSize: 12,
              );
            },
            (r) => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (_) => const RoleSelectionPage()),),
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
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (_) => const LoginPage()),);
                  },
                  icon: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Icon(
                      Icons.keyboard_backspace_outlined,
                      color: Colors.white30,
                    ),
                  ),),
            ),
            backgroundColor: Colors.black,
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(40.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const FancyTextReveal(
                      properties: Properties(
                          milliseconds: 400,
                          // horizontalSpacing: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),),
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Please fill the input below here",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        controller: userNameController,
                        decoration: InputDecoration(
                          prefixIcon: const Padding(
                            padding: EdgeInsets.only(bottom: 4),
                            child: Icon(
                              Icons.person_outline,
                              size: 18,
                              color: Colors.black12,
                            ),
                          ),
                          focusColor: Colors.black,
                          contentPadding: const EdgeInsets.all(10),
                          hintText: "Username",
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(5),),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    AnimatedSize(
                      duration: const Duration(milliseconds: 400),
                      child: userNameErrorWidget(),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          prefixIcon: const Padding(
                            padding: EdgeInsets.only(bottom: 2),
                            child: Icon(
                              Icons.mail_outline_outlined,
                              size: 18,
                              color: Colors.black12,
                            ),
                          ),
                          focusColor: Colors.black,
                          contentPadding: const EdgeInsets.all(10),
                          hintText: "Email",
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(5),),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    AnimatedSize(
                      duration: const Duration(milliseconds: 400),
                      child: emailErrorWidget(),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        controller: passwordController,
                        obscureText: !showPassword,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            splashRadius: 25,
                            onPressed: () {
                              setState(() {
                                showPassword = !showPassword;
                              });
                            },
                            icon: Icon(
                              showPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off_outlined,
                              size: 20,
                            ),
                          ),
                          prefixIcon: const Padding(
                            padding: EdgeInsets.only(bottom: 2),
                            child: Icon(
                              Icons.vpn_key_outlined,
                              size: 18,
                              color: Colors.black12,
                            ),
                          ),
                          focusColor: Colors.black,
                          contentPadding: const EdgeInsets.all(10),
                          hintText: "Password",
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(5),),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    AnimatedSize(
                      duration: const Duration(milliseconds: 400),
                      child: passwordErrorWidget(),
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      height: 60,
                      width: double.maxFinite,
                      child: TextButton(
                        onPressed: () {
                          FocusScope.of(context).unfocus();
                          showErrors = true;
                          if (isValid) {
                            isLoading = true;
                            AuthBloc.addEventWithoutContext(
                                AuthEvent.signUpUsingUsername(
                              userName: userNameController.text,
                              email: emailController.text,
                              password: passwordController.text,
                            ),);
                          }
                          setState(() {});
                        },
                        style: ButtonStyle(
                          overlayColor: MaterialStateProperty.all(Colors.white),
                          backgroundColor: isValid
                              ? MaterialStateProperty.all(const Color(0xff0DF5E3))
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
                                "SIGN UP",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,),
                              ),
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (_) => const LoginPage()),);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account?",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white.withOpacity(0.5),
                            ),
                          ),
                          const SizedBox(width: 4),
                          const Text(
                            "Sign in",
                            style: TextStyle(
                                fontSize: 13,
                                color: Color(0xff0DF5E3),
                                fontWeight: FontWeight.w600,),
                          ),
                        ],
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
