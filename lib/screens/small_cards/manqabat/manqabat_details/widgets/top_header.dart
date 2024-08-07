import 'package:flutter/material.dart';

import '../../widgets/custom_nav_button.dart';

class TopHeaderWidget extends StatelessWidget {
  const TopHeaderWidget({
    super.key,
    required this.md,
    required this.imageUrl,
    required this.imageColor,
    required this.title,
  });

  final Size md;
  final String imageUrl;
  final String title;
  final Color imageColor;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 30,
      left: 0,
      right: 0,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Container(
                  width: md.width * 0.25,
                  height: md.height * 0.1,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Image.asset(
                      imageUrl,
                      width: 50,
                      height: 50,
                      color: imageColor,
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.pause_circle,
                      size: 50,
                      color: Colors.white,
                    ))
              ],
            ),
          ),
          SizedBox(
            width: md.width * 0.5,
            height: md.height * 0.1,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
                const SizedBox(width: 20),
                CustomNavButton(
                  onPress: () {
                    Navigator.pop(context);
                  },
                  buttonColor: Colors.white,
                  iconColor: Colors.blue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
