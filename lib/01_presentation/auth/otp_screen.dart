import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:otp_text_field/style.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/wa_text.dart';
import '../widgets/wa_button.dart';
import '../../05_core/utils/themes.dart';
import '../../05_core/utils/constant.dart';
import '../../05_core/route/route_name.dart';
import '../../02_application/auth/auth_bloc.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController otpCtr = TextEditingController();
  String otp = "";
  bool? onCompleted;
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: const Icon(Icons.arrow_back_ios)),
        title: const WAText(text: "Login Using OTP"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          children: [
            sized0hx20,
            const WAText(
              text: "Please check the OTP sent to your mobile number ",
            ),
            sized0hx05,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WAText(
                  text: context.read<AuthBloc>().state.email ?? "",
                  fontWeight: FontWeight.w600,
                ),
                sized0wx10,
                WAButton(
                  buttonColor: Colors.white,
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      RouteNames.loginPage,
                      (route) => false,
                    );
                  },
                  textColor: Colors.black,
                  buttonText: "Change",
                  padding: 6,
                )
              ],
            ),
            sized0hx40,
            // PinCodeTextField(
            //   length: 6,
            //   obscureText: false,
            //   appContext: context,
            //   animationType: AnimationType.fade,
            //   pinTheme: PinTheme(
            //     fieldWidth: 40,
            //     fieldHeight: 50,
            //     shape: PinCodeFieldShape.box,
            //     activeFillColor: Colors.white,
            //     borderRadius: BorderRadius.circular(5),
            //     inactiveColor: Theme.of(context).primaryColor,
            //     selectedColor: Theme.of(context).colorScheme.secondary,
            //   ),
            //   animationDuration: const Duration(milliseconds: 300),
            //   // errorAnimationController: errorController,
            //   controller: otpCtr,
            //   onCompleted: (v) {
            //     debugPrint("Completed");
            //     onCompleted = true;
            //   },
            //   onChanged: (value) {
            //     debugPrint(value);
            //     // setState(() {
            //     //   currentText = value;
            //     // });
            //   },
            //   beforeTextPaste: (text) {
            //     debugPrint("Allowing to paste $text");
            //     //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
            //     //but you can show anything you want here, like your pop up saying wrong paste format or etc
            //     return true;
            //   },
            // ),
            OTPTextField(
              length: 6,
              fieldWidth: 50.w,
              outlineBorderRadius: 5.0,
              width: MediaQuery.of(context).size.width,
              otpFieldStyle: OtpFieldStyle(
                errorBorderColor: Colors.red,
                borderColor: Theme.of(context).dividerColor,
                focusBorderColor: Theme.of(context).dividerColor,
                enabledBorderColor: Theme.of(context).dividerColor,
              ),
              textFieldAlignment: MainAxisAlignment.spaceBetween,
              fieldStyle: FieldStyle.box,
              onChanged: (String verificationCode) {
                otp = verificationCode;
                setState(() {});
              },
              onCompleted: (pin) {},
            ),
            sized0hx40,
            BlocConsumer<AuthBloc, AuthState>(
              listenWhen: (previous, current) =>
                  previous.logindata != current.logindata,
              listener: (context, state) {
                if (state.logindata != null) {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    RouteNames.homePage,
                    (route) => false,
                  );
                }
              },
              builder: (context, state) {
                return WAButton(
                  onPressed: () {
                    log("OnClick");
                    log("${otp.isNotEmpty} ${otpCtr.text.length}");
                    if (otp.isNotEmpty && otp.length == 6) {
                      context
                          .read<AuthBloc>()
                          .add(AuthEvent.validateOtp(otp: otp));
                    }
                  },
                  fontSize: 16,
                  textColor: cWhite,
                  buttonText: "Continue",
                  loading: state.isLoading,
                  fontWeight: FontWeight.w600,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
