import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:sha_admin/01_presentation/main/main_screen.dart';

import '../widgets/wa_text.dart';
import '../widgets/wa_button.dart';
import '../widgets/wa_text_field.dart';
import '../../05_core/utils/themes.dart';
import '../../05_core/utils/constant.dart';
import '../../05_core/route/route_name.dart';
import '../../02_application/auth/auth_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController passwordCtr = TextEditingController();
  final TextEditingController loginUsernameCtr = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    loginUsernameCtr.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/shopco-logo-splash.png",
              height: 110.h,
              width: 110.w,
              fit: BoxFit.contain,
            ),
          ),
          sized0hx20,
          Container(
            decoration: const BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(
                  5.0,
                  5.0,
                ),
                blurRadius: 10.0,
                spreadRadius: 2.0,
              ),
            ]),
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 00),
            // height: 200,
            // width: 310.w,
            width: double.infinity,
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  sized0hx10,
                  const WAText(
                    text: "Login",
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                  sized0hx40,
                  WaTextField(
                    ctr: loginUsernameCtr,
                    hintText: "Enter username",
                    isUnderLineBorder: true,
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return "Please enter username";
                      } else if (value != null && value.length < 4) {
                        return "Please enter a valid username";
                      }
                      return null;
                    },
                  ),
                  sized0hx10,
                  WaTextField(
                    ctr: passwordCtr,
                    hintText: "Enter password",
                    isUnderLineBorder: true,
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return "Please enter password";
                      } else if (value != null && value.length < 4) {
                        return "Please enter a valid password";
                      }
                      return null;
                    },
                  ),
                  sized0hx30,
                  BlocConsumer<AuthBloc, AuthState>(
                    listenWhen: (previous, current) {
                      return previous.isAuthenticated !=
                          current.isAuthenticated;
                    },
                    listener: (context, state) {
                      if (state.isAuthenticated == true) {
                        context.go(RouteNames.homePage);
                      }
                    },
                    builder: (context, state) {
                      return WAButton(
                        buttonColor: Theme.of(context).colorScheme.secondary,
                        onPressed: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            final authBloc = context.read<AuthBloc>();
                            // Reset blod
                            authBloc.add(const AuthEvent.reset());

                            if (loginUsernameCtr.text.isNotEmpty) {
                              authBloc.add(
                                AuthEvent.login(
                                  pswd: passwordCtr.text.trim(),
                                  username: loginUsernameCtr.text.trim(),
                                ),
                              );
                            }
                          }
                        },
                        fontSize: 16,
                        textColor: cWhite,
                        buttonText: "Login",
                        loading: state.isLoading,
                        fontWeight: FontWeight.w600,
                      );
                    },
                  ),
                  sized0hx20,
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
