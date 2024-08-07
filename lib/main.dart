import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qalbe_saleem/provider/qlbe_saleem_audio_provider.dart';
import 'package:qalbe_saleem/screens/dashboard/dashboard_screen.dart';
import 'package:qalbe_saleem/screens/small_cards/izhar_tashakor/izhar_tashkor_detail_screen/izahr_tashkor_detail_screen.dart';
import 'package:qalbe_saleem/screens/small_cards/izhar_tashakor/izhar_tashkor_main_screen.dart';
import 'package:qalbe_saleem/screens/small_cards/manqabat/manqabat_details/qalb_saleem_detail_screen.dart';
import 'package:qalbe_saleem/screens/small_cards/manqabat/manqabat_main.dart';
import 'package:qalbe_saleem/screens/small_cards/muqadima_alkitab/muqadima_alkitab_detail_screen.dart';
import 'package:qalbe_saleem/screens/small_cards/muqadima_alkitab/muqadima_alkitab_main_screen.dart';
import 'package:qalbe_saleem/screens/small_cards/peshe_lafaz/peshe_lafaz_detail_screen.dart';
import 'package:qalbe_saleem/screens/small_cards/peshe_lafaz/peshe_lafaz_main_screen.dart';
import 'package:qalbe_saleem/screens/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<QlbeSaleemAudioProvider>(
          create: (_) => QlbeSaleemAudioProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Qable e Saleem',
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashScreen(),
          '/dashboard': (context) => const DashBoardScreen(),
          '/munqabat': (context) => const ManqabatMain(),
          '/munqabat_detail': (context) => const ManqabatDetailScreen(),
          '/izhar_tashkor': (context) => const IzharTashkorMainScreen(),
          '/izhar_tashkor_detail': (context) =>
              const IzharTashkorDetailScreen(),
          '/muqadima_main': (context) => const MuqadimaAlkitabMain(),
          '/muqadima_detail': (context) => const MuqadimaAlkitabDetailScreen(),
          '/peshe_lafaz': (context) => const PesheLafazMainScreen(),
          '/peshe_lafaz_detail': (context) => const PesheLafazDetailScreen(),
        },
      ),
    );
  }
}
