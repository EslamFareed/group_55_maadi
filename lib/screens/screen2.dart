import 'package:flutter/material.dart';
import 'package:group_55_maadi/screens/screen3.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        //   icon: Icon(Icons.arrow_back_ios),
        // ),
      ),
      body: const Center(
        child: Text("Search"),
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
