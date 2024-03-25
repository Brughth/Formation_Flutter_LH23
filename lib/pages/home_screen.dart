import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Formation Flutter"),
        leading: const Icon(
          Icons.menu,
        ),
        actions: const [
          Icon(
            Icons.notification_add,
          ),
          SizedBox(width: 10),
          Icon(
            Icons.more_vert,
          ),
          SizedBox(width: 10)
        ],
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 160,
                height: 200,
                color: Colors.red,
              ),
              Container(
                width: 160,
                height: 200,
                color: Colors.green,
              )
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 160,
                height: 200,
                color: Colors.yellow,
              ),
              Container(
                width: 160,
                height: 200,
                color: Colors.black,
              )
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 160,
                height: 200,
                color: Colors.purple,
              ),
              Container(
                width: 160,
                height: 200,
                color: Colors.pink,
              )
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 160,
                height: 200,
                color: Colors.orange,
              ),
              Container(
                width: 160,
                height: 200,
                color: Colors.blue,
              )
            ],
          ),
        ],
      ),
    );
  }
}
