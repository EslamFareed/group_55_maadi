import 'package:flutter/material.dart';
import 'package:group_55_maadi/screens/screen1.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Screen1()));
    });

    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
