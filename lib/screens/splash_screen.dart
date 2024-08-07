import 'package:flutter/material.dart';
import 'package:qalbe_saleem/constants/images/app_images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  final String routeName = "/";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    shiftScreen();
    super.initState();
  }

  void shiftScreen() {
    Future.delayed(const Duration(seconds: 3),
        () => {Navigator.pushNamed(context, '/dashboard')});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(KAppImages.pesheLafaz),
      ),
    );
  }
}
