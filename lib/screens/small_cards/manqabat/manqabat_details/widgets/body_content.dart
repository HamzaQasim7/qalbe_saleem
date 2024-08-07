import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qalbe_saleem/constants/images/app_images.dart';
import 'package:qalbe_saleem/extensions/sized_box_ext.dart';

import '../../../../../constants/strings/app_strings.dart';

class BodyWidgetContent extends StatelessWidget {
  const BodyWidgetContent({
    super.key,
    required this.md,
  });

  final Size md;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/icons/up_arrow.png',
          width: 30,
          height: 30,
          color: Colors.grey,
        ),
        Container(
          width: md.width * 0.85,
          height: md.height * 0.68,
          margin: const EdgeInsets.symmetric(vertical: 0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  context.sizedBoxHeight(0.02),
                  SvgPicture.asset(
                    KAppImages.motive,
                    height: 40,
                    width: 40,
                  ),
                  context.sizedBoxHeight(0.02),
                  const Text(
                    KAppTexts.munqibat,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    KAppTexts.isharTashakkorLong,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  context.sizedBoxHeight(0.02),
                  SvgPicture.asset(
                    KAppImages.motive,
                    height: 40,
                    width: 40,
                  ),
                  context.sizedBoxHeight(0.02),
                ],
              ),
            ),
          ),
        ),
        Image.asset(
          'assets/icons/down_arrow.png',
          width: 30,
          height: 30,
          color: Colors.grey,
        ),
      ],
    );
  }
}
