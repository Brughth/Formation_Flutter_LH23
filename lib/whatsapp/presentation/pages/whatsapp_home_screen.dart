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
    double width = MediaQuery.of(context).size.width;
    bool isMobile = width < 800;
    bool isTablet = width >= 800 && width < 1100;
    bool isDesktop = width >= 1100;
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
          ListView.builder(
            itemCount: 50,
            itemBuilder: (context, index) {
              // if (index == 5) {
              //   return Row(
              //     children: [
              //       CircleAvatar(
              //         radius: 50,
              //         backgroundColor: Colors.pink,
              //       ),
              //       CircleAvatar(
              //         radius: 50,
              //         backgroundColor: Colors.pink,
              //       ),
              //     ],
              //   );
              // }
              return Column(
                children: [
                  Container(
                    width: double.infinity,
                    // margin: const EdgeInsets.symmetric(
                    //   vertical: 10,
                    // ),
                    height: 60,
                    color: Colors.primaries[(index / 3).ceil()],
                  ),
                  if (index < 49) const Divider()
                ],
              );
            },
          ),
          ListView.separated(
            itemCount: 50,
            itemBuilder: (context, index) {
              return Container(
                width: double.infinity,
                // margin: const EdgeInsets.symmetric(
                //   vertical: 10,
                // ),
                height: 60,
                color: Colors.primaries[(index / 3).ceil()],
              );
            },
            separatorBuilder: (context, index) {
              return Container(
                width: double.infinity,
                // margin: const EdgeInsets.symmetric(
                //   vertical: 10,
                // ),
                height: 10,
                color: Colors.white,
              );
            },
          ),
          GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: isMobile
                  ? 2
                  : isTablet
                      ? 4
                      : 6,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            children: List.generate(
              16,
              (index) => Container(
                color: Colors.primaries[index],
              ),
            ),
          )
        ],
      ),
    );
  }
}
