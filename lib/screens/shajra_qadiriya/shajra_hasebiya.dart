import 'package:flutter/material.dart';
import 'package:qalbe_saleem/constants/strings/app_strings.dart';
import 'package:qalbe_saleem/screens/shajra_qadiriya/widgets/connected_line_widget.dart';
import 'package:qalbe_saleem/screens/shajra_qadiriya/widgets/image_text_card_widget.dart';
import 'package:qalbe_saleem/screens/shajra_qadiriya/widgets/test_card_widget.dart';

class ShajraHasebiya extends StatelessWidget {
  const ShajraHasebiya({super.key});

  static String routeName = '/shajra_hasebiya';

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
                            KAppTexts.treeOfQadriya,
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
                        KAppTexts.introduction,
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
                        imagePath: 'assets/images/medina.png',
                        title: KAppTexts.prophetMuhammad,
                        description: '',
                        index: '1',
                      ),
                      const ConnectorLine(),
                      const ImageTextCardWidget(
                        imagePath: 'assets/images/redFlagMazar.png',
                        title: KAppTexts.imamAli,
                        description: '',
                        index: '2',
                      ),
                      const ConnectorLine(),
                      const ImageTextCardWidget(
                        imagePath: 'assets/images/redFlagMazar.png',
                        title: KAppTexts.imamHussain,
                        description: '',
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
                          text: KAppTexts.imamAliReza,
                          index: '8',
                          color: Colors.red),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sheikhMarufKarkhi,
                          index: '9',
                          color: Colors.blueGrey),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sheikhSariSaqati,
                          index: '10',
                          color: Colors.indigoAccent),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sheikhJunaidBaghdadi,
                          index: '11',
                          color: Colors.deepPurple),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sheikhAbuBakrShibli,
                          index: '12',
                          color: Colors.lightBlue),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sheikhAbuFadlAbdulWahid,
                          index: '13',
                          color: Colors.grey),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sheikhAbuFarahTartusi,
                          index: '14',
                          color: Colors.deepOrange),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sheikhAbuHassanHankari,
                          index: '15',
                          color: Colors.lightGreen),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedSultanAbuAlQasim,
                          index: '16',
                          color: Colors.lightBlue),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sheikhAbuSaeedMubarak,
                          index: '17',
                          color: Colors.grey),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.abdulQadirJilani,
                          index: '18',
                          color: Colors.red),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedAbdulWahab,
                          index: '19',
                          color: Colors.blueGrey),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedFadlAllah,
                          index: '20',
                          color: Colors.grey),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedAbuFarahSufi,
                          index: '21',
                          color: Colors.deepOrange),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedGanjBakhsh,
                          index: '22',
                          color: Colors.lightGreen),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedAhmad,
                          index: '23',
                          color: Colors.grey),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedMasood,
                          index: '24',
                          color: Colors.red),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedNooruddinAli,
                          index: '25',
                          color: Colors.blueGrey),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedShahMir,
                          index: '26',
                          color: Colors.indigoAccent),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sheikhShamsuddinMuhammad,
                          index: '27',
                          color: Colors.deepPurpleAccent),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedMuhammadGhous,
                          index: '28',
                          color: Colors.grey),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedAbdulQadirSani,
                          index: '29',
                          color: Colors.red),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sheikhMuhammadBalPir,
                          index: '30',
                          color: Colors.blueGrey),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedAbdulQadirThalith,
                          index: '31',
                          color: Colors.indigoAccent),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedZainulAbidin,
                          index: '32',
                          color: Colors.deepPurpleAccent),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedAbdulRazzaq,
                          index: '33',
                          color: Colors.lightBlue),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedMustafa,
                          index: '34',
                          color: Colors.grey),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedMahmoodJilani,
                          index: '35',
                          color: Colors.deepOrangeAccent),
                      const ConnectorLine(),
                      const TextCard(
                          text: KAppTexts.sayyedMujtaba,
                          index: '36',
                          color: Colors.lightGreen),
                      const ConnectorLine(),
                      const ImageTextCardWidget(
                        imagePath: 'assets/images/masjid3.jpg',
                        title: KAppTexts.sayyedHaiderBakhsh,
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
