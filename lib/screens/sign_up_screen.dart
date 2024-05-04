import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:group_55_maadi/components/default_text_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign up"),
        // backgroundColor: Colors.deepOrange,
        // foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          DefaultTextField(
            controller: emailController,
            type: TextInputType.emailAddress,
            label: "Email",
            icon: Icons.email,
          ),
          DefaultTextField(
            controller: passwordController,
            type: TextInputType.text,
            label: "Password",
            icon: Icons.password,
          ),
          DefaultTextField(
            controller: nameController,
            type: TextInputType.text,
            label: "Name",
            icon: Icons.person,
          ),
        ],
      ),
    );
  }
}
