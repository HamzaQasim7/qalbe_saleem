import 'package:flutter/material.dart';

import 'body_content.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    super.key,
    required this.md,
  });

  final Size md;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: md.height * 0.25,
      left: 0,
      right: 0,
      height: md.height,
      // Adjust the height as needed
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: BodyWidgetContent(md: md),
            ),
          ),
        ],
      ),
    );
  }
}
