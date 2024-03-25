import 'package:demo/widgets/custom_icon_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widgets/custom_badge_icon_widget.dart';

class FaceBookHomeScreen extends StatelessWidget {
  const FaceBookHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "facebook",
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        actions: const [
          CustomIconWidget(
            iconData: Icons.add,
          ),
          CustomIconWidget(
            iconData: Icons.search,
          ),
          CustomIconWidget(
            iconData: Icons.menu,
          ),
        ],
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.home_filled,
                  color: Colors.blue,
                  size: 30,
                ),
                CustomBadgeIconWidget(
                  iconData: Icons.group,
                  count: '1',
                ),
                CustomBadgeIconWidget(
                  iconData: Icons.messenger,
                  count: '1',
                ),
                CustomBadgeIconWidget(
                  iconData: Icons.notification_add,
                  count: '9',
                ),
                CustomBadgeIconWidget(
                  iconData: Icons.video_camera_back,
                  count: '9',
                ),
                Icon(
                  Icons.maps_home_work,
                  color: Colors.grey,
                  size: 30,
                ),
              ],
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: SizedBox(
              height: 50,
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 40,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Positioned(
                        bottom: 3,
                        right: 0,
                        child: Container(
                          width: 18,
                          height: 18,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(.3),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: Text("A quoi pensez-vous"),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Column(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        color: Colors.purple,
                      ),
                      const Text(
                        "Phote",
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
