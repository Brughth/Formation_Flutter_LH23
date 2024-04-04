import 'package:flutter/material.dart';

class FormInFlutter extends StatefulWidget {
  const FormInFlutter({super.key});

  @override
  State<FormInFlutter> createState() => _FormInFlutterState();
}

class _FormInFlutterState extends State<FormInFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form in flutter"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        children: [
          SizedBox(
            height: 20,
          ),
          TextFormField(
            keyboardType: TextInputType.phone,
            textInputAction: TextInputAction.search,
            decoration: InputDecoration(
              // label: Text("Name"),
              contentPadding: EdgeInsets.zero,
              prefixIcon: const Icon(Icons.person),
              hintText: "Enter your name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Colors.purple,
                ),
              ),
            ),
            onChanged: (value) {
              print(value);
            },
            cursorWidth: 5,
            onTap: () {
              print("TextField was clicked");
            },
          ),
        ],
      ),
    );
  }
}
