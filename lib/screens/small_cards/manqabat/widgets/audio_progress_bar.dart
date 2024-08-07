import 'package:flutter/material.dart';

class AudioProgressBar extends StatelessWidget {
  const AudioProgressBar({
    super.key,
    required this.md,
  });

  final Size md;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: md.width,
      child: Row(
        children: [
          Container(
              width: 25,
              height: 25,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
              child: Center(
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
              )),
          const SizedBox(width: 8),
          Expanded(
            child: Divider(
              color: Colors.grey[300],
              thickness: 2,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            '6:13',
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
