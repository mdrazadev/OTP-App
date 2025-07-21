import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpInputScreen extends StatelessWidget {
  const OtpInputScreen({
    super.key,
    required this.onChanged,
    required this.onCompleted,
    required this.onSubmitted,
    this.img = 'assets/otp.png',
    this.otpLength = 4,
    this.isPassword = false,
    this.isAutofocus = true,
    this.obscureTxt = "*",
  });

  final String img;
  final int otpLength;
  final bool isPassword;
  final bool isAutofocus;
  final String obscureTxt;
  final Function(String val)? onChanged;
  final Function(String val)?
  onCompleted; // This function calls when user fill each text box.
  final Function(String val)?
  onSubmitted; // This function calls when user click submit button on keyboard.

  @override
  Widget build(BuildContext context) {
    double wt = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(img, width: wt * 0.8),
              SizedBox(height: 20),
              Text(
                "We have sent the $otpLength digits varification code to your mobile number",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Center(
                child: Pinput(
                  length: otpLength,
                  obscureText: isPassword,
                  obscuringWidget: Text(obscureTxt),
                  autofocus: isAutofocus,
                  onChanged: onChanged,
                  onCompleted: onCompleted,
                  onSubmitted: onSubmitted,
                ),
              ),
              SizedBox(height: 150),
              ElevatedButton(onPressed: () {}, child: const Text("Confirm")),
            ],
          ),
        ),
      ),
    );
  }
}
