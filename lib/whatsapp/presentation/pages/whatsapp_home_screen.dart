import 'package:flutter/material.dart';

class WhatsAppHomeScreen extends StatefulWidget {
  const WhatsAppHomeScreen({super.key});

  @override
  State<WhatsAppHomeScreen> createState() => _WhatsAppHomeScreenState();
}

class _WhatsAppHomeScreenState extends State<WhatsAppHomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "WA Business",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
        bottom: TabBar(
          controller: tabController,
          tabs: const [
            Tab(text: 'Desc.(10)'),
            Tab(text: 'Actus'),
            Tab(text: 'Appels'),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Container(
              child: const Center(
                  child: Text(
            "Desc.",
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ))),
          Container(
              child: GestureDetector(
            onTap: () {
              tabController.animateTo(2);
            },
            child: const Center(
                child: Text(
              "Actus.",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            )),
          )),
          Container(
              child: const Center(
                  child: Text(
            "Appels.",
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ))),
        ],
      ),
    );
  }
}
