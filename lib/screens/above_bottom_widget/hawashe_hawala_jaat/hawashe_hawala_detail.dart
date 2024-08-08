import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qalbe_saleem/constants/images/app_images.dart';
import 'package:qalbe_saleem/constants/strings/app_strings.dart';
import 'package:qalbe_saleem/extensions/sized_box_ext.dart';

import '../../small_cards/manqabat/widgets/custom_nav_button.dart';

class HawasheHawalaDetailScreen extends StatelessWidget {
  const HawasheHawalaDetailScreen({super.key});

  final String routeName = "/hawashe_hawala_detail";

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
          HeaderWidget(
              md: md,
              subTitle: KAppTexts.appName,
              title: KAppTexts.hawasheHawala),
          // const SubHeaderWidget(),
          Body(md: md),
        ],
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
    required this.md,
    required this.subTitle,
    required this.title,
  });

  final Size md;
  final String subTitle;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 30,
        left: 0,
        right: 0,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(children: [
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
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
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
                  )),
            ]),
          ),
          Text(
            subTitle,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ]));
  }
}

class Body extends StatelessWidget {
  const Body({
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
              child: BodyContent(md: md),
            ),
          ),
        ],
      ),
    );
  }
}

class BodyContent extends StatelessWidget {
  const BodyContent({
    super.key,
    required this.md,
  });

  final Size md;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
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
                  const Text(
                    KAppTexts.munqibat,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(height: 16),
                  SvgPicture.asset(
                    KAppImages.hawalajatq1,
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
                  context.sizedBoxHeight(0.02),
                  SvgPicture.asset(
                    KAppImages.hawalajatq2,
                    height: 40,
                    width: 40,
                  ),
                  context.sizedBoxHeight(0.02),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
