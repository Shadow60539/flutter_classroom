import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:googleapis/admin/directory_v1.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: SingleChildScrollView(
          reverse: true,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: SizedBox(
                        height: 200,
                        width: 200,
                        child: SvgPicture.asset(
                            "assets/imageassets/loginpagebot.svg")),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Register",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      color: Color(0xff0A1931),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.3,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const CustomTextField(
                    hinttext: "UserName",
                    image: "assets/imageassets/usernameicon.svg",
                  ),
                  const CustomTextField(
                    hinttext: "UserName",
                    image: "assets/imageassets/emailicon.svg",
                  ),
                  const CustomTextField(
                    hinttext: "UserName",
                    image: "assets/imageassets/passwoardicon.svg",
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.image,
    required this.hinttext,
  });
  final String image;
  final String? hinttext;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            children: [
              SvgPicture.asset(image),
              // SvgPicture.asset("assets/imageassets/usernameicon.svg"),
              const Expanded(
                child: TextField(
                  showCursor: false,
                  textAlign: TextAlign.left,
                  maxLines: 1,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 18, right: 10),
                      alignLabelWithHint: true,
                      hintText: "UserName",
                      // hintText: ,
                      hintStyle: TextStyle(
                        fontFamily: "Poppins",
                        color: Color(0xffBEBAB4),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.3,
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
