import 'package:flutter/material.dart';

class CustomNavButton extends StatelessWidget {
  const CustomNavButton({
    super.key,
    this.onPress,
    this.buttonColor = Colors.grey,
    this.iconColor = Colors.white,
    this.icon = Icons.arrow_forward,
  });
  final VoidCallback? onPress;
  final Color? buttonColor, iconColor;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: const BorderRadius.all(Radius.circular(6))),
        child: Center(
          child: IconButton(
              padding: const EdgeInsets.only(bottom: 1.4),
              onPressed: onPress,
              icon: Icon(
                icon,
                color: iconColor,
                size: 25,
              )),
        ),
      ),
    );
  }
}
