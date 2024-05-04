import 'package:flutter/material.dart';
import 'package:group_55_maadi/screens/list_view_screen.dart';
import 'package:group_55_maadi/screens/main_layout.dart';
import 'package:group_55_maadi/screens/screen1.dart';
import 'package:group_55_maadi/screens/screen2.dart';
import 'package:group_55_maadi/screens/screen3.dart';
import 'package:group_55_maadi/screens/screen4.dart';
import 'package:group_55_maadi/screens/splash_screen.dart';
import 'package:group_55_maadi/screens/tab_bar_screen.dart';

import 'screens/sign_up_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      themeMode: ThemeMode.system,
      darkTheme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepOrange,
          centerTitle: true,
        ),
      ),
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepOrange,
          centerTitle: true,
        ),
      ),
      // theme: ThemeData(
      //   scaffoldBackgroundColor: Colors.black,
      //   appBarTheme: AppBarTheme(
      //     backgroundColor: Colors.deepOrange,
      //     foregroundColor: Colors.white,
      //     centerTitle: true,
      //   ),
      // ),
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
