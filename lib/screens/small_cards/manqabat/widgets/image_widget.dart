import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    final md = MediaQuery.sizeOf(context);
    return Container(
      width: md.width,
      height: md.height * 0.45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue,
      ),
      child: Center(
        child: Image.asset(
          color: Colors.white,
          imageUrl,
          width: MediaQuery.sizeOf(context).width * 0.5,
          height: MediaQuery.sizeOf(context).height * 0.3,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
