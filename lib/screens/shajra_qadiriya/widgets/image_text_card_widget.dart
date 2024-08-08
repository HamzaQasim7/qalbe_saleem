import 'package:flutter/material.dart';

import '../DetailScreen.dart';
import 'connected_line_widget.dart';

class ImageTextCardWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String index;

  const ImageTextCardWidget({
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
