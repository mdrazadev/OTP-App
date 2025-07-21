import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:otpapp/screens/otp_input_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void onChanged(String value) {
    if (kDebugMode) {
      print("onChanged called");
      print("value => $value");
    }
  }

  void onCompleted(String value) {
    if (kDebugMode) {
      print("onCompleted called");
      print("value => $value");
    }
  }

  void onSubmitted(String value) {
    if (kDebugMode) {
      print("onSubmitted called");
      print("value => $value");
    }
  }

  @override
  Widget build(BuildContext context) {
    return OtpInputScreen(
      onChanged: onChanged,
      onCompleted: onCompleted,
      onSubmitted: onSubmitted,
    );
  }
}
