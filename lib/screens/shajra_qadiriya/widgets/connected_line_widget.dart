import 'package:flutter/material.dart';

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
