import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
    required this.imageUrl,
    this.containerColor,
  });

  final String imageUrl;
  final Color? containerColor;
  @override
  Widget build(BuildContext context) {
    final md = MediaQuery.sizeOf(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(2),
      child: SvgPicture.asset(
        imageUrl,
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height * 0.45,
        // fit: BoxFit.cover,
      ),
    );
  }
}
