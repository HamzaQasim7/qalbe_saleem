import 'package:flutter/material.dart';
import 'package:qalbe_saleem/constants/images/app_images.dart';
import 'package:qalbe_saleem/constants/strings/app_strings.dart';
import 'package:qalbe_saleem/screens/small_cards/manqabat/manqabat_details/widgets/top_header.dart';

import '../manqabat/manqabat_details/widgets/body_widget.dart';
import '../manqabat/manqabat_details/widgets/sub_header.dart';

class MuqadimaAlkitabDetailScreen extends StatelessWidget {
  const MuqadimaAlkitabDetailScreen({super.key});
  final String routeName = "/muqadima_detail";
  @override
  Widget build(BuildContext context) {
    final md = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              width: md.width,
              height: md.height * 0.3,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
            ),
          ),
          TopHeaderWidget(
            md: md,
            imageUrl: KAppImages.muqadimaBook,
            imageColor: Colors.purple.shade900,
            title: KAppTexts.muqadima_kitab,
          ),
          const SubHeaderWidget(),
          BodyWidget(md: md),
        ],
      ),
    );
  }
}
