import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/toast.dart';
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
  final TextEditingController loginEmailCtr = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    loginEmailCtr.dispose();
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
            top: 220.h,
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
                      ctr: loginEmailCtr,
                      hintText: "Enter email",
                      isUnderLineBorder: true,
                      validator: (value) {
                        final bool emailValid = RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value ?? "");

                        if (!emailValid) {
                          return "please enter a valid email";
                        }
                        return null;
                      },
                    ),
                    sized0hx30,
                    BlocConsumer<AuthBloc, AuthState>(
                      listenWhen: (previous, current) {
                        return current.email != null &&
                            previous.email != current.email;
                      },
                      listener: (context, state) {
                        if (state.email != null) {
                          Navigator.pushNamed(context, RouteNames.otpPage);
                        }
                      },
                      builder: (context, state) {
                        return WAButton(
                          buttonColor: Theme.of(context).colorScheme.secondary,
                          onPressed: () {
                            final authBloc = context.read<AuthBloc>();
                            // Reset bloc if not empty
                            if (authBloc.state.email?.isNotEmpty ?? false) {
                              authBloc.add(const AuthEvent.reset());
                            }
                            if (loginEmailCtr.text.isNotEmpty) {
                              authBloc.add(
                                AuthEvent.generateOtp(
                                    email: loginEmailCtr.text),
                              );
                            } else {
                              failureToast("Enter valid email");
                            }
                          },
                          textColor: cWhite,
                          buttonText: "Continue",
                          loading: state.isLoading,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        );
                      },
                    ),
                    sized0hx20,
                    RichText(
                      text: const TextSpan(
                        text: "By continuing, you agree to our ",
                        style: TextStyle(color: Colors.black, fontSize: 10),
                        children: [
                          TextSpan(
                            text: "Terms and Conditions",
                            style: TextStyle(color: Colors.blue, fontSize: 10),
                          ),
                          TextSpan(text: " and "),
                          TextSpan(
                            text: "Privacy Policy",
                            style: TextStyle(color: Colors.blue, fontSize: 10),
                          )
                        ],
                      ),
                    )
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
