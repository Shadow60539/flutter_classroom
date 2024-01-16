import 'package:classroom/application/auth/auth_bloc.dart';
import 'package:classroom/core/strings.dart';
import 'package:classroom/domain/auth/user_model.dart';
import 'package:classroom/injection.dart';
import 'package:classroom/presentation/core/fade_animations.dart';
import 'package:classroom/presentation/home/pages/loading_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

class RoleSelectionPage extends StatefulWidget {
  const RoleSelectionPage({super.key});

  @override
  _RoleSelectionPageState createState() => _RoleSelectionPageState();
}

class _RoleSelectionPageState extends State<RoleSelectionPage> {
  final GlobalKey<AnimatedListState> _key = GlobalKey<AnimatedListState>();

  final List<int> _list = [];

  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      Future f = Future(() {});
      for (final element in [1, 2, 3, 4, 5]) {
        f = f.then(
          (value) => Future.delayed(const Duration(milliseconds: 300), () {
            _list.add(element);
            _key.currentState?.insertItem(_list.length - 1);
          }),
        );
      }
    });

    super.initState();
  }

  String get email => (getIt<Box>().get(HiveBoxNames.user) as UserModel).email;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.registerRoleOption.fold(
          () => null,
          (a) => a.fold(
            (l) => null,
            (r) async {
              await Future.delayed(const Duration(milliseconds: 400));
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => const LoadingPage()),
              );
            },
          ),
        );
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Padding(
            padding: const EdgeInsets.all(40.0),
            child: AnimatedList(
              key: _key,
              initialItemCount: _list.length,
              itemBuilder: (context, index, animation) {
                if (index == 0) {
                  return const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeFromUpAnimation(
                        child: Text(
                          "Welcome,",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                    ],
                  );
                } else if (index == 1) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        email,
                        style: const TextStyle(
                          color: Colors.white,
                          // fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  );
                } else if (index == 2) {
                  return const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Select a role to continue",
                        style: TextStyle(
                          color: Colors.white24,
                          // fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  );
                } else if (index == 3) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeFromUpAnimation(
                        child: SizedBox(
                          height: 50,
                          width: double.maxFinite,
                          child: TextButton(
                            onPressed: () {
                              AuthBloc.addEventWithoutContext(
                                const AuthEvent.registerRole(0),
                              );
                            },
                            style: ButtonStyle(
                              overlayColor:
                                  MaterialStateProperty.all(Colors.white),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white10),
                            ),
                            child: const Text(
                              "STUDENT",
                              style: TextStyle(
                                color: Colors.white38,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  );
                } else {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeFromUpAnimation(
                        child: SizedBox(
                          height: 50,
                          width: double.maxFinite,
                          child: TextButton(
                            onPressed: () {
                              AuthBloc.addEventWithoutContext(
                                const AuthEvent.registerRole(1),
                              );
                            },
                            style: ButtonStyle(
                              overlayColor:
                                  MaterialStateProperty.all(Colors.white),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white10),
                            ),
                            child: const Text(
                              "TEACHER",
                              style: TextStyle(
                                color: Colors.white38,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
