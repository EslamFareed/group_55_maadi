import 'package:flutter/material.dart';
import 'package:group_55_maadi/screens/list_view_screen.dart';
import 'package:group_55_maadi/screens/main_layout.dart';
import 'package:group_55_maadi/screens/screen1.dart';
import 'package:group_55_maadi/screens/screen2.dart';
import 'package:group_55_maadi/screens/screen3.dart';
import 'package:group_55_maadi/screens/tab_bar_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewScreen(),
      // initialRoute: "tabbar",
      // routes: {
      //   "tabbar": (context) => TabBarScreen(),
      //   "main": (context) => MainLayout(),
      //   "screen1": (context) => Screen1(),
      //   "screen2": (context) => Screen2(),
      //   "screen3": (context) => Screen3(),
      // },
    );
  }
}
