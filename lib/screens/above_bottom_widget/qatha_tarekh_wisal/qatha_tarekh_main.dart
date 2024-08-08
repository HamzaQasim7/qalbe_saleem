import 'package:flutter/material.dart';
import 'package:qalbe_saleem/screens/small_cards/manqabat/widgets/audio_title_text.dart';
import 'package:qalbe_saleem/screens/small_cards/manqabat/widgets/bottom_widget.dart';

import '../../../constants/images/app_images.dart';
import '../../../constants/strings/app_strings.dart';
import '../../small_cards/manqabat/widgets/header_widget.dart';
import '../../small_cards/manqabat/widgets/image_widget.dart';

class QathaTarekhMain extends StatelessWidget {
  const QathaTarekhMain({super.key});

  final String routeName = "/qatha_tarekh_main";

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
                  title: KAppTexts.munqibat,
                  space: 50,
                ),
              ),
              const SizedBox(height: 30),
              const ImageWidget(
                imageUrl: KAppImages.heartFlower,
              ),
              const SizedBox(height: 40),
              const AudioTitleText(
                title: KAppTexts.munqibat,
                subTitle: KAppTexts.munqabatAuther,
              ),
              const AudioPlayerWidget(),
              BottomBody(onTap: () {
                Navigator.pushNamed(context, '/munqabat_detail');
              })
            ],
          ),
        ),
      ),
    );
  }
}
