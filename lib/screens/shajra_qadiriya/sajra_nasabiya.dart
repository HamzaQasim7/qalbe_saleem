import 'package:flutter/material.dart';
import 'package:qalbe_saleem/constants/strings/app_strings.dart';
import 'package:qalbe_saleem/screens/shajra_qadiriya/widgets/connected_line_widget.dart';
import 'package:qalbe_saleem/screens/shajra_qadiriya/widgets/image_text_card_widget.dart';
import 'package:qalbe_saleem/screens/shajra_qadiriya/widgets/test_card_widget.dart';

import 'DetailScreen.dart';

class ShajraNasabiya extends StatelessWidget {
  const ShajraNasabiya({super.key});

  static String routeName = '/shajra_nasabiya';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(50.0),
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            'شجرہ قادریہ حسینیہ',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontFamily: 'NotoNaskhArabic',
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.arrow_forward),
                            color: Colors.white,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 16.0),
                      const Text(
                        'ابو رحمت اللہ علیہ کا شجرہ حسب حال اکابرین (رح) و اسلافین سے بیاں کرتا ہوں۔ محبوب خدا حضرت سیدنا احمد مجتبیٰ محمد مصطفیٰ، صلی اللہ علیہ و آلہ وسلم سے لے کر',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontFamily: 'NotoNaskhArabic',
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      const Text(
                        'اس کی پوری تفصیل ملاحظہ فرمائیں:',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontFamily: 'NotoNaskhArabic',
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const ImageTextCardWidget(
                        imagePath: 'assets/images/masjid.jpg',
                        title: 'خاتم النبیین حضرت سیدنا محمد رسول اللہ',
                        description: 'صلی اللہ علیہ و آلہ و سلم',
                        index: '1',
                      ),
                      const ConnectorLine(),
                      const ImageTextCardWidget(
                        imagePath: 'assets/images/masjid2.jpg',
                        title: 'حضرت سیدنا علی المرتضیٰ',
                        description: 'کرم اللہ تعالٰی وجہہ الکریم',
                        index: '2',
                      ),
                      const ConnectorLine(),
                      const ImageTextCardWidget(
                        imagePath: 'assets/images/masjid3.jpg',
                        title: 'حضرت سیدنا علی المرتضیٰ',
                        description: 'کرم اللہ تعالٰی وجہہ الکریم',
                        index: '3',
                      ),
                      const ConnectorLine(),
                      const TextCard(
                        index: '4',
                        color: Colors.deepOrange,
                        text: KAppTexts.imamAliZainulAbidin,
                      ),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.imamMuhammadBaqir,
                          index: '5',
                          color: Colors.purpleAccent),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.imamJafarSadiq,
                          index: '6',
                          color: Colors.lightGreenAccent),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.imamMusaKazim,
                          index: '7',
                          color: Colors.grey),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedIshaq,
                          index: '8',
                          color: Colors.red),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedAbuAlQasim,
                          index: '9',
                          color: Colors.blueGrey),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedAbuAlHusayn,
                          index: '10',
                          color: Colors.indigoAccent),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedAbuAlHasan,
                          index: '11',
                          color: Colors.deepPurple),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedIshaqThani,
                          index: '12',
                          color: Colors.lightBlue),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedAbuAlQasim,
                          index: '13',
                          color: Colors.grey),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedSultanAbdulRahman,
                          index: '14',
                          color: Colors.deepOrange),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedAliAlAmeer,
                          index: '15',
                          color: Colors.lightGreen),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedSultanAbuAlQasim,
                          index: '16',
                          color: Colors.lightBlue),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedSultanMuhammadAhmad,
                          index: '17',
                          color: Colors.grey),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedSultanSadruddin,
                          index: '18',
                          color: Colors.red),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedRazauddin,
                          index: '19',
                          color: Colors.blueGrey),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedSultanMuhammadAhmad,
                          index: '20',
                          color: Colors.grey),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedMuhammadThani,
                          index: '21',
                          color: Colors.deepOrange),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedMuhammadWaliuddin,
                          index: '22',
                          color: Colors.lightGreen),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedWajihuddin,
                          index: '23',
                          color: Colors.grey),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedShahAbdulKarim,
                          index: '24',
                          color: Colors.red),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedShahAliSheer,
                          index: '25',
                          color: Colors.blueGrey),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedShahNasiruddin,
                          index: '26',
                          color: Colors.indigoAccent),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedShahZainulAbidin,
                          index: '27',
                          color: Colors.deepPurpleAccent),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedMuhammadShah,
                          index: '28',
                          color: Colors.grey),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedIbrahimShah,
                          index: '29',
                          color: Colors.red),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedMusaShah,
                          index: '30',
                          color: Colors.blueGrey),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedRajanShah,
                          index: '31',
                          color: Colors.indigoAccent),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedShahNawazShah,
                          index: '32',
                          color: Colors.deepPurpleAccent),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedMuhammadZamanShah,
                          index: '33',
                          color: Colors.lightBlue),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedQadirBakhshShah,
                          index: '34',
                          color: Colors.grey),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedHaiderShah,
                          index: '35',
                          color: Colors.deepOrangeAccent),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedDolatShah,
                          index: '36',
                          color: Colors.lightGreen),
                      const ConnectorLine(),
                      const ImageTextCardWidget(
                        imagePath: 'assets/images/masjid3.jpg',
                        title: KAppTexts.sayyedMuhammadAbdullahShah,
                        description: '',
                        index: '37',
                      ),
                      SizedBox(height: MediaQuery.sizeOf(context).height * 0.1)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
