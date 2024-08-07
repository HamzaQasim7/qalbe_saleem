import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qalbe_saleem/provider/qlbe_saleem_audio_provider.dart';

import '../manqabat_details/qalb_saleem_detail_screen.dart';

class BottomBody extends StatelessWidget {
  const BottomBody({
    super.key,
    required this.onTap,
  });
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Image.asset(
            'assets/icons/book.png',
            width: 40,
            height: 40,
            color: Colors.grey[500],
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Consumer<QlbeSaleemAudioProvider>(
          builder: (context, audioProvider, child) {
            return InkWell(
              onTap: () {
                if (audioProvider.isPlaying) {
                  audioProvider.pauseAudio();
                } else {
                  audioProvider.playAudio('audio/japan.mp3');
                }
              },
              child: Container(
                margin: const EdgeInsets.only(bottom: 0.0),
                child: IconButton(
                    icon: Icon(
                      audioProvider.isPlaying ? Icons.pause : Icons.play_circle,
                      color: Colors.grey[500],
                      size: 60,
                    ),
                    onPressed: null),
              ),
            );
          },
        ),
        const SizedBox(
          width: 20,
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.share,
              color: Colors.grey[500],
              size: 40,
            )),
      ],
    );
  }
}

class AudioPlayerWidget extends StatelessWidget {
  const AudioPlayerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: MediaQuery.sizeOf(context).width * 0.9,
      child: Consumer<QlbeSaleemAudioProvider>(
        builder: (context, audioProvider, child) {
          return StreamBuilder<Duration>(
            stream: audioProvider.positionStream,
            builder: (context, positionSnapshot) {
              final position = positionSnapshot.data ?? Duration.zero;
              return StreamBuilder<Duration?>(
                stream: audioProvider.durationStream,
                builder: (context, durationSnapshot) {
                  final duration = durationSnapshot.data ?? Duration.zero;

                  // Avoid invalid values for the slider
                  const sliderMin = 0.0;
                  final sliderMax = duration.inSeconds.toDouble();
                  final sliderValue = position.inSeconds.toDouble();

                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.9,
                        child: Slider(
                          thumbColor: Colors.blue,
                          activeColor: Colors.black38,
                          value: sliderValue.clamp(sliderMin, sliderMax),
                          min: sliderMin,
                          max: sliderMax,
                          onChanged: (value) {
                            print('Slider value changed: $value');
                            audioProvider
                                .seekAudio(Duration(seconds: value.toInt()));
                          },
                        ),
                      ),
                      SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              audioProvider.isPlaying
                                  ? Text(_formatDuration(position))
                                  : const Text(''),
                              Text(_formatDuration(duration)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          );
        },
      ),
    );
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "$twoDigitMinutes:$twoDigitSeconds";
  }
}
