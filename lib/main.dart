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
  var controller = TextEditingController();

  bool hidden = false;

  var _key = GlobalKey<FormState>();

  var checked = false;

  String gender = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Form(
          key: _key,
          child: Column(
            children: [
              // TextFormField(
              //   validator: (value) {
              //     if (value!.length < 6) {
              //       return "not valid";
              //     }
              //   },
              //   obscureText: hidden,
              //   controller: controller,
              //   keyboardType: TextInputType.emailAddress,
              //   decoration: InputDecoration(
              //     // hintText: "Please Enter your email",
              //     labelText: "Please Enter your email",
              //     // labelStyle: TextStyle(),
              //     // hintStyle: TextStyle(),
              //     prefixIcon: const Icon(Icons.email),
              //     suffixIcon: IconButton(
              //       onPressed: () {
              //         setState(() {
              //           hidden = !hidden;
              //         });
              //       },
              //       icon:
              //           Icon(hidden ? Icons.visibility_off : Icons.visibility),
              //     ),
              //     // suffixIcon: IconButton(
              //     //   onPressed: () {
              //     //     controller.text = "";
              //     //   },
              //     //   icon: const Icon(Icons.cancel_outlined),
              //     // ),
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(20),
              //     ),
              //     // border: InputBorder.none,
              //   ),
              //   // style: TextStyle(),
              // ),
              // MaterialButton(
              //   onPressed: () {
              //     _key.currentState!.validate();
              //   },
              //   color: Colors.deepOrange,
              //   textColor: Colors.white,
              //   child: const Text("Login"),
              // ),
              // Switch(
              //   value: checked,
              //   onChanged: (val) {
              //     setState(() {
              //       checked = !checked;
              //     });
              //   },
              // ),
              // SwitchListTile(
              //   value: checked,
              //   onChanged: (val) {
              //     setState(() {
              //       checked = !checked;
              //     });
              //   },
              //   title: Text("CLick me"),
              // )

              RadioListTile(
                title: const Text("Male"),
                value: "Male",
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = "Male";
                  });
                },
              ),

              RadioListTile(
                title: const Text("Female"),
                value: "Female",
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = "Female";
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
