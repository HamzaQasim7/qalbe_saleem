import 'package:flutter/material.dart';

import 'custom_nav_button.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
    required this.md,
    required this.title,
    required this.space,
    this.textColor,
    this.textWeight = FontWeight.w600,
    this.onPress,
  });

  final Size md;
  final String title;
  final double space;
  final Color? textColor;
  final FontWeight? textWeight;
  final VoidCallback? onPress;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: md.width * 0.5,
      height: md.height * 0.1,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w600, color: textColor),
          ),
          SizedBox(width: space),
          CustomNavButton(onPress: onPress),
        ],
      ),
    );
  }
}
