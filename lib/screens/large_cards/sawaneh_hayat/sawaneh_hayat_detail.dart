import 'package:flutter/material.dart';
import 'package:qalbe_saleem/constants/images/app_images.dart';
import 'package:qalbe_saleem/constants/strings/app_strings.dart';
import 'package:qalbe_saleem/screens/small_cards/manqabat/manqabat_details/widgets/top_header.dart';

import '../../small_cards/manqabat/manqabat_details/widgets/body_widget.dart';
import '../../small_cards/manqabat/manqabat_details/widgets/sub_header.dart';

class SawanehHayatDetailScreen extends StatelessWidget {
  const SawanehHayatDetailScreen({super.key});
  final String routeName = "/sawaneh_hayat_detail";
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
              decoration: BoxDecoration(
                color: Colors.blue.shade900,
              ),
            ),
          ),
          TopHeaderWidget(
            md: md,
            imageUrl: KAppImages.stars,
            imageColor: Colors.blue.shade900,
            title: KAppTexts.lCardTitle1,
          ),
          const SubHeaderWidget(),
          BodyWidget(md: md),
        ],
      ),
    );
  }
}
