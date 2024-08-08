import 'package:flutter/material.dart';
import 'package:qalbe_saleem/constants/strings/app_strings.dart';

import '../../../constants/images/app_images.dart';
import '../manqabat/widgets/audio_title_text.dart';
import '../manqabat/widgets/bottom_widget.dart';
import '../manqabat/widgets/header_widget.dart';
import '../manqabat/widgets/image_widget.dart';

class PesheLafazMainScreen extends StatelessWidget {
  const PesheLafazMainScreen({super.key});

  final String routeName = "/peshe_lafaz";

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
                  title: 'قلب سليم',
                  space: 50,
                ),
              ),
              const SizedBox(height: 30),
              const ImageWidget(
                imageUrl: KAppImages.muqadimaBook,
              ),
              const SizedBox(height: 40),
              const AudioTitleText(
                title: KAppTexts.paysh_alfaz,
                subTitle: KAppTexts.pesheLafazAuther,
              ),
              const AudioPlayerWidget(),
              BottomBody(onTap: () {
                Navigator.pushNamed(context, '/peshe_lafaz_detail');
              })
            ],
          ),
        ),
      ),
    );
  }
}
