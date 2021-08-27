import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:classroom/application/auth/auth_bloc.dart';

class AuthCheckPage extends StatelessWidget {
  const AuthCheckPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  AuthBloc.addEventWithoutContext(
                      const AuthEvent.signUpUsingUsername(
                          email: "sanjeevmadhav03@gmail.com",
                          userName: "shadow",
                          password: "12345678"));
                },
                child: Text("SignUp"),
              ),
              TextButton(
                onPressed: () {
                  AuthBloc.addEventWithoutContext(
                      const AuthEvent.signInUsingUsername(
                          userName: "shadow", password: "12345678"));
                },
                child: Text("SignIn"),
              ),
              TextButton(
                onPressed: () {
                  AuthBloc.addEventWithoutContext(
                      const AuthEvent.signInUsingGoogle());
                },
                child: Text("Google"),
              ),
            ],
          );
        },
      ),
    );
  }
}
