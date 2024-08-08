import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:qalbe_saleem/extensions/padding_ext.dart';
import 'package:qalbe_saleem/extensions/sized_box_ext.dart';
import 'package:qalbe_saleem/screens/dashboard/body/large_custom_container.dart';
import 'package:qalbe_saleem/screens/dashboard/body/lower_section.dart';
import 'package:qalbe_saleem/screens/dashboard/body/sliding_cards.dart';
import 'package:qalbe_saleem/screens/dashboard/body/small_custom_container.dart';
import 'package:qalbe_saleem/screens/dashboard/body/social_media.dart';
import 'package:qalbe_saleem/screens/dashboard/body/text_custom_container.dart';

import '../../../constants/strings/app_strings.dart';
import 'bottom_container.dart';

class BodyDashBoardScreen extends StatelessWidget {
  const BodyDashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: screenHeight * 0.07),
          const SlidingCardsView(),
          SizedBox(height: screenHeight * 0.02),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SmallCustomContainer(
                  onTap: () {
                    Navigator.pushNamed(context, '/munqabat');
                  },
                  text: KAppTexts.munqibat,
                  bgImage: 'assets/dashboard/png/manqabat_1.png',
                ),
                SmallCustomContainer(
                  onTap: () {
                    Navigator.pushNamed(context, '/izhar_tashkor');
                  },
                  text: KAppTexts.izhar_tashhakor,
                  bgImage: 'assets/dashboard/png/izhar_1.png',
                ),
                SmallCustomContainer(
                  onTap: () {
                    Navigator.pushNamed(context, '/muqadima_main');
                  },
                  text: KAppTexts.muqadima_kitab,
                  bgImage: 'assets/dashboard/png/muqadma_1.png',
                ),
                SmallCustomContainer(
                  onTap: () {
                    Navigator.pushNamed(context, '/peshe_lafaz');
                  },
                  text: KAppTexts.paysh_alfaz,
                  bgImage: 'assets/dashboard/png/paish-lafz_1.png',
                ),
              ],
            ),
          ),
          context.sizedBoxHeight(0.02),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
            child: Column(
              children: [
                LargeCustomContainer(
                  onTap: () {
                    Navigator.pushNamed(context, '/sawaneh_hayat');
                  },
                  imageURl: 'assets/dashboard/png/1.png',
                  heading: KAppTexts.lCardTitle1,
                  subheading: KAppTexts.reshahatQalam,
                  authorName: KAppTexts.munqabatAuther,
                ),
                LargeCustomContainer(
                  onTap: () {
                    Navigator.pushNamed(context, '/qalbe_saleem_main');
                  },
                  imageURl: 'assets/dashboard/png/2.png',
                  heading: KAppTexts.lCardTitle2,
                  subheading: KAppTexts.reshahatQalam,
                  authorName: KAppTexts.izharTashkorAuther,
                ),
                LargeCustomContainer(
                  onTap: () {
                    Navigator.pushNamed(context, '/aqwal_o_irshadat');
                  },
                  imageURl: 'assets/dashboard/png/3.png',
                  heading: KAppTexts.lCardTitle3,
                  subheading: KAppTexts.lCardSubTitle3,
                  authorName: KAppTexts.aqwalOIrshadatAuther,
                ),
                LargeCustomContainer(
                  onTap: () {
                    // Navigator.pushNamed(context, '/alfiraq_main');
                  },
                  imageURl: 'assets/dashboard/png/4.png',
                  heading: KAppTexts.lCardTitle4,
                  subheading: KAppTexts.reshahatQalam,
                  authorName: KAppTexts.munqabatAuther,
                ),
              ],
            ),
          ),
          context.sizedBoxHeight(0.02),
          const LowerSection(),
          context.sizedBoxHeight(0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextCustomContainer(
                onPress: () {
                  Navigator.pushNamed(context, '/bottom_munqabat');
                },
                imageURL: 'assets/dashboard/png/bg_text_7.png',
                text: KAppTexts.munqibat,
              ),
              TextCustomContainer(
                onPress: () {
                  Navigator.pushNamed(context, '/qatha_tarekh_main');
                },
                imageURL: 'assets/dashboard/png/bg_text_6.png',
                text: KAppTexts.qataeTarekh,
              ),
            ],
          ),
          context.sizedBoxHeight(0.02),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/hawashe_hawala_detail');
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
              width: double.infinity,
              height: screenWidth * 0.20,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/dashboard/png/bg_text_9.png'),
                ),
              ),
              child: Center(
                child: Text(
                  KAppTexts.hawasheHawala,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenWidth * 0.035,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ),
          context.sizedBoxHeight(0.02),
          const BottomContainer(),
          context.sizedBoxHeight(0.02),
          const SocialMedia(),
          context.sizedBoxHeight(0.02),
        ],
      ),
    );
  }
}
