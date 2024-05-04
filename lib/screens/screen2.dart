import 'package:flutter/material.dart';
import 'package:group_55_maadi/screens/screen3.dart';

class Screen2 extends StatelessWidget {
  Screen2({super.key, required this.name});

  String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, "Hello from screen 2");
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Center(
        child: Text(name),
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       // Navigator.pushReplacement(
      //       //     context,
      //       //     MaterialPageRoute(
      //       //       builder: (context) => Screen3(),
      //       //     ));
      //       // Navigator.pushAndRemoveUntil(
      //       //   context,
      //       //   MaterialPageRoute(
      //       //     builder: (context) => Screen3(),
      //       //   ),
      //       //   (route) => false, // close all
      //       // );

      //       Navigator.pushReplacementNamed(context, "screen3");
      //       // Navigator.pushNamedAndRemoveUntil(
      //       //     context, "screen3", (route) => false);
      //     },
      //     child: const Text("Go to SCreen3"),
      //   ),
      // ),
    );
  }
}
