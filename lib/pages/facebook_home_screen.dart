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
                  const SizedBox(width: 15),
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
          ),
          const SizedBox(height: 10),
          Container(
            height: 7,
            // width: double.infinity,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey,
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(
                  width: 10,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                color: Colors.green,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                color: Colors.black,
                              ),
                              child: Center(
                                child: Text(
                                  "Ajouter a la story",
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge
                                      ?.copyWith(
                                        color: Colors.white,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 70,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.purple,
                          border: Border.all(
                            color: Colors.black,
                            width: 3,
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.add),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                ...[1, 2, 3, 4, 5, 6].map((e) {
                  return Container(
                    width: MediaQuery.of(context).size.width * .32,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.primaries[e],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.primaries[e + 2],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 10,
                              ),
                              child: Text(
                                "${e}",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          const Text(
                            'Ornela Mary',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                })
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 7,
            // width: double.infinity,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey,
          ),
          ...List.generate(5, (index) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              child: Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.primaries[index],
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.green,
                          width: 3,
                        ),
                      ),
                    ),
                    title: const Text("Olice SONA FC"),
                    subtitle: const Text("23h - 😎"),
                    trailing: const Icon(Icons.close),
                  ),
                  Text(
                    "Apprendre un petit peu chaque jour est une méthode efficace. Des études ont montré que les participants qui ont établi une routine d'apprentissage sont plus susceptibles d'atteindre leurs objectifs. ",
                  ),
                  Container(
                    height: 250,
                    width: double.infinity,
                    color: Colors.primaries[index],
                  )
                ],
              ),
            );
          })
        ],
      ),
    );
  }
}
