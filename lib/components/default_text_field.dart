import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  DefaultTextField(
      {super.key,
      required this.controller,
      required this.type,
      required this.label,
      required this.icon});

  TextEditingController controller;
  TextInputType type;
  String label;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: TextFormField(
        controller: controller, // 1
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        keyboardType: type, // 2
        decoration: InputDecoration(
          labelText: label, // 3
          prefixIcon: Icon(icon, size: 15, color: Colors.grey), // 4
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
