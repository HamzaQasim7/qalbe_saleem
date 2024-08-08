import 'package:flutter/material.dart';

import 'connected_line_widget.dart';

class TextCard extends StatelessWidget {
  const TextCard(
      {super.key,
      required this.index,
      required this.color,
      required this.text});

  final String index;

  final Color color;
  final String text;

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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                text,
                maxLines: 2,
                textAlign: TextAlign.center,
                style: const TextStyle(
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
