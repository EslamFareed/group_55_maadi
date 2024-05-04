import 'package:flutter/material.dart';
import 'package:group_55_maadi/screens/screen2.dart';

class Screen1 extends StatelessWidget {
  Screen1({super.key});

  String name = "Eslam";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            var value = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Screen2(name: name),
              ),
            );

            print(value);
          },
          child: const Text("Go to screen 2"),
        ),
      ),
    );
  }
}
