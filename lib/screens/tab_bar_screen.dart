import 'package:flutter/material.dart';
import 'package:group_55_maadi/screens/screen1.dart';
import 'package:group_55_maadi/screens/screen2.dart';
import 'package:group_55_maadi/screens/screen3.dart';

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            labelColor: Colors.deepOrange,
            // dividerColor: Colors.deepOrange,
            indicatorColor: Colors.deepOrange,
            indicatorSize: TabBarIndicatorSize.tab,
            unselectedLabelColor: Colors.green,
            tabs: [
              Tab(
                text: "Chats",
                icon: Icon(Icons.chat),
              ),
              Tab(
                text: "Stories",
                icon: Icon(Icons.branding_watermark),
              ),
              Tab(
                text: "Calls",
                icon: Icon(Icons.call),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Screen1(),
            // Screen2(),
            Screen3(),
          ],
        ),
      ),
    );
  }
}
