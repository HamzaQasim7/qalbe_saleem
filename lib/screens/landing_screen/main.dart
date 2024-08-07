import 'package:flutter/material.dart';
import 'package:qalbe_saleem/constants/strings/app_strings.dart';

import 'DetailScreen.dart';

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

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
                            onPressed: () {},
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
                      const CardWidget(
                        imagePath: 'assets/images/masjid.jpg',
                        title: 'خاتم النبیین حضرت سیدنا محمد رسول اللہ',
                        description: 'صلی اللہ علیہ و آلہ و سلم',
                        index: '1',
                      ),
                      const ConnectorLine(),
                      const CardWidget(
                        imagePath: 'assets/images/masjid2.jpg',
                        title: 'حضرت سیدنا علی المرتضیٰ',
                        description: 'کرم اللہ تعالٰی وجہہ الکریم',
                        index: '2',
                      ),
                      const ConnectorLine(),
                      const CardWidget(
                        imagePath: 'assets/images/masjid3.jpg',
                        title: 'حضرت سیدنا علی المرتضیٰ',
                        description: 'کرم اللہ تعالٰی وجہہ الکریم',
                        index: '3',
                      ),
                      const ConnectorLine(),
                      const TextCard(index: '4', color: Colors.deepOrange),
                      const ConnectorLine(),
                      const TextCard(index: '5', color: Colors.purpleAccent),
                      const ConnectorLine(),
                      const TextCard(
                          index: '6', color: Colors.lightGreenAccent),
                      const ConnectorLine(),
                      const TextCard(index: '7', color: Colors.grey),
                      const ConnectorLine(),
                      const TextCard(index: '8', color: Colors.red),
                      const ConnectorLine(),
                      const TextCard(index: '9', color: Colors.blueGrey),
                      const ConnectorLine(),
                      const TextCard(index: '10', color: Colors.indigoAccent),
                      const ConnectorLine(),
                      const TextCard(index: '11', color: Colors.deepPurple),
                      const ConnectorLine(),
                      const TextCard(index: '12', color: Colors.lightBlue),
                      const ConnectorLine(),
                      const TextCard(index: '13', color: Colors.grey),
                      const ConnectorLine(),
                      const TextCard(index: '14', color: Colors.deepOrange),
                      const ConnectorLine(),
                      const TextCard(index: '15', color: Colors.lightGreen),
                      const ConnectorLine(),
                      const TextCard(index: '16', color: Colors.lightBlue),
                      const ConnectorLine(),
                      const TextCard(index: '17', color: Colors.grey),
                      const ConnectorLine(),
                      const TextCard(index: '18', color: Colors.red),
                      const ConnectorLine(),
                      const TextCard(index: '19', color: Colors.blueGrey),
                      const ConnectorLine(),
                      const TextCard(index: '20', color: Colors.grey),
                      const ConnectorLine(),
                      const TextCard(index: '21', color: Colors.deepOrange),
                      const ConnectorLine(),
                      const TextCard(index: '22', color: Colors.lightGreen),
                      const ConnectorLine(),
                      const TextCard(index: '23', color: Colors.grey),
                      const ConnectorLine(),
                      const TextCard(index: '24', color: Colors.red),
                      const ConnectorLine(),
                      const TextCard(index: '25', color: Colors.blueGrey),
                      const ConnectorLine(),
                      const TextCard(index: '26', color: Colors.indigoAccent),
                      const ConnectorLine(),
                      const TextCard(
                          index: '27', color: Colors.deepPurpleAccent),
                      const ConnectorLine(),
                      const TextCard(index: '28', color: Colors.grey),
                      const ConnectorLine(),
                      const TextCard(index: '29', color: Colors.red),
                      const ConnectorLine(),
                      const TextCard(index: '30', color: Colors.blueGrey),
                      const ConnectorLine(),
                      const TextCard(index: '31', color: Colors.indigoAccent),
                      const ConnectorLine(),
                      const TextCard(
                          index: '32', color: Colors.deepPurpleAccent),
                      const ConnectorLine(),
                      const TextCard(index: '33', color: Colors.lightBlue),
                      const ConnectorLine(),
                      const TextCard(index: '34', color: Colors.grey),
                      const ConnectorLine(),
                      const TextCard(
                          index: '35', color: Colors.deepOrangeAccent),
                      const ConnectorLine(),
                      const TextCard(index: '36', color: Colors.lightGreen),
                      const ConnectorLine(),
                      const CardWidget(
                        imagePath: 'assets/images/masjid3.jpg',
                        title: 'حضرت سیدنا علی المرتضیٰ',
                        description: 'کرم اللہ تعالٰی وجہہ الکریم',
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

class CardWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String index;

  const CardWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.grey,
          child: Text(
            index,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        const ConnectorLine(),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(
                  title: title,
                  description: description,
                ),
              ),
            );
          },
          child: SizedBox(
            width: 400,
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              margin:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              elevation: 4,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                    ),
                    child: Image.asset(imagePath, fit: BoxFit.cover),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          title,
                          textAlign: TextAlign.right,
                          style: const TextStyle(
                            fontFamily: 'NotoNaskhArabic',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          description,
                          textAlign: TextAlign.right,
                          style: const TextStyle(
                            fontFamily: 'NotoNaskhArabic',
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ConnectorLine extends StatelessWidget {
  const ConnectorLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 3,
      color: Colors.grey,
      margin: const EdgeInsets.only(left: 40, right: 40),
    );
  }
}

class TextCard extends StatelessWidget {
  const TextCard({super.key, required this.index, required this.color});

  final String index;

  final Color color;

  @override
  Widget build(BuildContext context) {
    final screenHieght = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.grey,
          child: Text(
            index,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        const ConnectorLine(),
        Container(
          width: screenWidth * 0.9,
          height: screenHieght * 0.07,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(12)),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                KAppTexts.prophetMuhammad,
                maxLines: 2,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}
