import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  Color iconColor = Colors.grey;

  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        title: const Text("Test"),
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              children: [
                SizedBox(height: 10),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/images/image.jpg"),
                ),
                SizedBox(height: 20),
                Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.edit,
                      size: 15,
                    ),
                    title: Text("Edit Profile"),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.shopping_cart,
                      size: 15,
                    ),
                    title: Text("My Cart"),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.list,
                      size: 15,
                    ),
                    title: Text("My Orders"),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.facebook,
                    size: 30,
                  ),
                  Icon(
                    Icons.wechat,
                    size: 30,
                  ),
                  Icon(
                    Icons.whatshot,
                    size: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            child: ListTile(
              onTap: () {},
              leading: Icon(Icons.search),
              title: Text("Search"),
              subtitle: Text("Search For Products"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}



// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() {
//     print("createState -----------------------------------------------------");

//     return _HomeScreenState();
//   }
// }

// class _HomeScreenState extends State<HomeScreen> {
//   String name = "Hello World";

//   int counter = 0;

//   @override
//   void initState() {
//     print("initState -----------------------------------------------------");
//     super.initState();
//   }

//   @override
//   void dispose() {
//     print("dispose -----------------------------------------------------");

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     print("build -----------------------------------------------------");

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(name),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             IconButton(
//               onPressed: () {
//                 setState(() {
//                   counter++;
//                 });
//               },
//               icon: const Icon(Icons.add),
//             ),
//              Text(
//               "$counter",
//               style: const TextStyle(fontSize: 50),
//             ),
//             IconButton(
//               onPressed: () {
//                 setState(() {
//                   counter--;
//                 });
//               },
//               icon: const Icon(Icons.minimize),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

// // class HomeScreen extends StatelessWidget {
// //   HomeScreen({super.key});
// //   String name = "Hello World";
// //   int counter = 0;
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text(name),
// //       ),
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             IconButton(
// //               onPressed: () {
// //                 counter++;
// //                 print(counter);
// //               },
// //               icon: Icon(Icons.add),
// //             ),
// //             Text(
// //               "$counter",
// //               style: TextStyle(fontSize: 50),
// //             ),
// //             // ElevatedButton(
// //             //   onPressed: () {},
// //             //   // onPressed: click,
// //             //   child: Text("Click Me"),
// //             //   style: ButtonStyle(),
// //             // ),
// //             // TextButton(
// //             //   onPressed: () {},
// //             //   child: Text("Click me"),
// //             // ),
// //             IconButton(
// //               onPressed: () {
// //                 counter--;
// //                 print(counter);
// //               },
// //               icon: Icon(Icons.minimize),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// //   void click() {
// //     print("Clicked");
// //   }
// // }
// }
