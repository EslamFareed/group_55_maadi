import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  ListViewScreen({super.key});

  List<String> categories = [
    "Cats",
    "Dogs",
    "Eles",
    "Sharks",
    "Tigers",
    "Cats",
    "Dogs",
    "Eles",
    "Sharks",
    "Tigers",
    "Cats",
    "Dogs",
    "Eles",
    "Sharks",
    "Tigers",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View"),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Card(
                    child: Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(10),
                        alignment: Alignment.center,
                        child: Text(categories[index])),
                  );
                },
                itemCount: categories.length,
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(categories[index]),
                    leading: const Icon(Icons.badge_rounded),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                  ),
                );
              },
              itemCount: categories.length,
            ),
            // Expanded(
            //   child: ListView.builder(
            //     itemBuilder: (context, index) {
            //       return Card(
            //         child: ListTile(
            //           title: Text(categories[index]),
            //           leading: const Icon(Icons.badge_rounded),
            //           trailing: const Icon(
            //             Icons.arrow_forward_ios,
            //             size: 15,
            //           ),
            //         ),
            //       );
            //     },
            //     itemCount: categories.length,
            //   ),
            // ),
          ],
        ),
      ),
      // body: GridView.builder(
      //   gridDelegate:
      //       const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      //   itemBuilder: (context, index) {
      //     return Card(
      //       child: Container(
      //         alignment: Alignment.center,
      //         child: Text(categories[index]),
      //       ),
      //     );
      //   },
      //   itemCount: categories.length,
      // ),
      // body: ListView.builder(
      //   itemBuilder: (context, index) {
      //     return Card(
      //       child: ListTile(
      //         title: Text(categories[index]),
      //         leading: Icon(Icons.badge_rounded),
      //         trailing: Icon(
      //           Icons.arrow_forward_ios,
      //           size: 15,
      //         ),
      //       ),
      //     );
      //   },
      //   itemCount: categories.length,
      // ),
      // body: GridView(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //     childAspectRatio: 1 / 2,
      //     mainAxisSpacing: 20,
      //     crossAxisSpacing: 20,
      //   ),
      //   children: [
      //     Image.asset("assets/images/image.jpg", fit: BoxFit.cover),
      //     Image.asset("assets/images/image.jpg", fit: BoxFit.cover),
      //     Image.asset("assets/images/image.jpg", fit: BoxFit.cover),
      //     Image.asset("assets/images/image.jpg", fit: BoxFit.cover),
      //     Image.asset("assets/images/image.jpg", fit: BoxFit.cover),
      //     Image.asset("assets/images/image.jpg", fit: BoxFit.cover),
      //   ],
      // ),
      // body: ListView(
      //   // scrollDirection: Axis.horizontal,
      //   children: [
      //     Image.asset("assets/images/image.jpg"),
      //     Image.asset("assets/images/image.jpg"),
      //     Image.asset("assets/images/image.jpg"),
      //     Image.asset("assets/images/image.jpg"),
      //     Image.asset("assets/images/image.jpg"),
      //   ],
      // ),
    );
  }
}
