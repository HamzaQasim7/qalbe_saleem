import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qalbe_saleem/constants/images/app_images.dart';
import 'package:qalbe_saleem/constants/strings/app_strings.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  final String routeName = "/";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _heightAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..forward(); // Start the animation immediately

    _heightAnimation = Tween<double>(begin: 0, end: 30).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    shiftScreen();
  }

  void shiftScreen() {
    Future.delayed(const Duration(seconds: 3),
        () => Navigator.pushNamed(context, '/dashboard'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 300,
              child: Center(child: SvgPicture.asset(KAppImages.appLogo)),
            ),
            AnimatedBuilder(
              animation: _heightAnimation,
              builder: (context, child) {
                return SizedBox(
                  height: _heightAnimation.value,
                );
              },
            ),
            const Text(
              KAppTexts.appName,
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
