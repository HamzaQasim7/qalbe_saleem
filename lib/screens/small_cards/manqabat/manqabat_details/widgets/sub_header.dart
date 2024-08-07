import 'package:flutter/material.dart';

class SubHeaderWidget extends StatelessWidget {
  const SubHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 150,
      left: 10,
      right: 0,
      child: Row(
        children: [
          const Icon(Icons.watch_later_outlined, color: Colors.white),
          const SizedBox(width: 10),
          const Text(
            '1:11',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          const SizedBox(width: 10),
          SizedBox(
            width: 200,
            child: LinearProgressIndicator(
              value: 0.5,
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
              backgroundColor: Colors.grey[400],
              color: Colors.blue,
            ),
          ),
          const SizedBox(width: 70),
          Image.asset('assets/icons/frequency.png',
              width: 40, height: 40, color: Colors.white)
        ],
      ),
    );
  }
}
