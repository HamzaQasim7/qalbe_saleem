import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qalbe_saleem/provider/qlbe_saleem_audio_provider.dart';
import 'package:qalbe_saleem/screens/above_bottom_widget/bottom_munqabat/bottom_manqabat_main.dart';
import 'package:qalbe_saleem/screens/above_bottom_widget/bottom_munqabat/bottom_munqabat_detail.dart';
import 'package:qalbe_saleem/screens/above_bottom_widget/hawashe_hawala_jaat/hawashe_hawala_detail.dart';
import 'package:qalbe_saleem/screens/above_bottom_widget/hawashe_hawala_jaat/hawashe_hawala_main.dart';
import 'package:qalbe_saleem/screens/above_bottom_widget/qatha_tarekh_wisal/qatha_tarekh_detail.dart';
import 'package:qalbe_saleem/screens/above_bottom_widget/qatha_tarekh_wisal/qatha_tarekh_main.dart';
import 'package:qalbe_saleem/screens/dashboard/dashboard_screen.dart';
import 'package:qalbe_saleem/screens/large_cards/alfiraq/alfiraq_detail_screen.dart';
import 'package:qalbe_saleem/screens/large_cards/alfiraq/alfiraq_main.dart';
import 'package:qalbe_saleem/screens/large_cards/aqwal_o_irshadat/aqwal_o_irshadat_detail.dart';
import 'package:qalbe_saleem/screens/large_cards/aqwal_o_irshadat/aqwal_o_irshadat_main.dart';
import 'package:qalbe_saleem/screens/large_cards/qalbe_saleem/qalbe_saleem_detail_screen.dart';
import 'package:qalbe_saleem/screens/large_cards/qalbe_saleem/qalbe_saleem_main.dart';
import 'package:qalbe_saleem/screens/large_cards/sawaneh_hayat/sawaneh_hayat_detail.dart';
import 'package:qalbe_saleem/screens/large_cards/sawaneh_hayat/sawaneh_hayat_main.dart';
import 'package:qalbe_saleem/screens/shajra_qadiriya/sajra_nasabiya.dart';
import 'package:qalbe_saleem/screens/shajra_qadiriya/shajra_bottom_widgets/shajra_hasebiya/shajra_hasebiya_detail.dart';
import 'package:qalbe_saleem/screens/shajra_qadiriya/shajra_bottom_widgets/shajra_hasebiya/shajra_hasebiya_main.dart';
import 'package:qalbe_saleem/screens/shajra_qadiriya/shajra_bottom_widgets/shajra_nasebiya/shajra_nasebiya_detail.dart';
import 'package:qalbe_saleem/screens/shajra_qadiriya/shajra_bottom_widgets/shajra_nasebiya/shjra_nasebiya_main.dart';
import 'package:qalbe_saleem/screens/shajra_qadiriya/shajra_hasebiya.dart';
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
    final screenWidth = MediaQuery.sizeOf(context).width;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<QlbeSaleemAudioProvider>(
          create: (_) => QlbeSaleemAudioProvider(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: TextTheme(
            displayMedium: TextStyle(
              color: Colors.white,
              fontSize: screenWidth * 0.035,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
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
          '/sawaneh_hayat': (context) => const SawanehHayatMainScreen(),
          '/sawaneh_hayat_detail': (context) =>
              const SawanehHayatDetailScreen(),
          '/qalbe_saleem_main': (context) => const QalbeSaleemMainScreen(),
          '/qalbe_saleem_detail': (context) => const QalbeSaleemDetailScreen(),
          '/aqwal_o_irshadat_detail': (context) =>
              const AqwalOIrshadatDetailScreen(),
          '/aqwal_o_irshadat': (context) => const AqwalOIrshadatMainScreen(),
          '/alfiraq_main': (context) => const AlFiraqMainScreen(),
          '/alfiraq_detail': (context) => const AlfiraqDetailScreen(),
          '/shajra_nasabiya': (context) => const ShajraNasabiya(),
          '/shajra_hasebiya': (context) => const ShajraHasebiya(),
          '/shajra_nasebiya_main': (context) =>
              const ShajraNasebiyaMainScreen(),
          '/shajra_nasebiya_detail': (context) =>
              const ShajraNasebiyaDetailScreen(),
          '/shajra_hasebiya_main': (context) =>
              const ShajraHasebiyaMainScreen(),
          '/shajra_hasebiya_detail': (context) =>
              const ShajraHasebiyaDetailScreen(),
          '/bottom_munqabat': (context) => const BottomManqabatMain(),
          '/bottom_munqabat_detail': (context) =>
              const BottomManqabatDetailScreen(),
          '/hawashe_hawala_main': (context) => const HawasheHawalaMain(),
          '/hawashe_hawala_detail': (context) =>
              const HawasheHawalaDetailScreen(),
          '/qatha_tarekh_main': (context) => const QathaTarekhMain(),
          '/qatha_tarekh_detail': (context) => const QathaTarekhDetailScreen(),
        },
      ),
    );
  }
}
