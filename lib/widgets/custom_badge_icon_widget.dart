import 'package:flutter/material.dart';

class CustomBadgeIconWidget extends StatelessWidget {
  const CustomBadgeIconWidget({
    super.key,
    required this.iconData,
    required this.count,
  });

  final IconData iconData;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        const SizedBox(
          height: 40,
          width: 35,
        ),
        Icon(
          iconData,
          color: Colors.grey,
          size: 30,
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),
            child: Text(
              count,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
