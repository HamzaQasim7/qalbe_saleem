import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qalbe_saleem/provider/qlbe_saleem_audio_provider.dart';
import 'package:qalbe_saleem/utils/app_theme/app_theme.dart';
import 'package:qalbe_saleem/utils/routes/app_routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<QlbeSaleemAudioProvider>(
          create: (_) => QlbeSaleemAudioProvider(),
        ),
      ],
      child: MaterialApp(
        theme: AppTheme.lightTheme,
        debugShowCheckedModeBanner: false,
        title: 'Qable e Saleem',
        initialRoute: AppRoutes.splash,
        routes: AppRoutes.routes,
      ),
    );
  }
}
