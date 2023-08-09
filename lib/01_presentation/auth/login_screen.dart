import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

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
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 270.h,
                width: MediaQuery.of(context).size.height,
                child: Icon(
                  Icons.shopify_rounded,
                  size: 85.0,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              const Expanded(child: ColoredBox(color: Colors.grey))
            ],
          ),
          Positioned(
            top: MediaQuery.viewInsetsOf(context).bottom == 0 ? 220.h : 100.h,
            left: 23.w,
            child: Container(
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
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              // height: 200,
              width: 310.w,
              // width: double.maxFinite,
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
            ),
          )
        ],
      ),
    );
  }
}
