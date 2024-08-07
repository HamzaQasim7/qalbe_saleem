import 'package:flutter/material.dart';
import 'package:qalbe_saleem/constants/strings/app_strings.dart';

import '../../../constants/images/app_images.dart';
import '../../small_cards/manqabat/widgets/audio_title_text.dart';
import '../../small_cards/manqabat/widgets/bottom_widget.dart';
import '../../small_cards/manqabat/widgets/header_widget.dart';
import '../../small_cards/manqabat/widgets/image_widget.dart';

class SawanehHayatMainScreen extends StatelessWidget {
  const SawanehHayatMainScreen({super.key});

  final String routeName = "/sawaneh_hayat";

  @override
  Widget build(BuildContext context) {
    final md = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
        child: SafeArea(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: HeaderWidget(
                  onPress: () {
                    Navigator.pop(context);
                  },
                  md: md,
                  title: KAppTexts.lCardTitle2,
                  space: 50,
                ),
              ),
              const SizedBox(height: 30),
              ImageWidget(
                md: md,
                imageUrl: KAppImages.stars,
              ),
              const SizedBox(height: 40),
              const AudioTitleText(
                title: KAppTexts.lCardTitle1,
                subTitle: KAppTexts.munqabatAuther,
              ),
              const AudioPlayerWidget(),
              BottomBody(onTap: () {
                Navigator.pushNamed(context, '/sawaneh_hayat_detail');
              })
            ],
          ),
        ),
      ),
    );
  }
}
