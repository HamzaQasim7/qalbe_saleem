import 'package:flutter/material.dart';
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

class AppRoutes {
  static const String splash = '/';
  static const String dashboard = '/dashboard';
  static const String munqabat = '/munqabat';
  static const String munqabatDetail = '/munqabat_detail';
  static const String izharTashkor = '/izhar_tashkor';
  static const String izharTashkorDetail = '/izhar_tashkor_detail';
  static const String muqadimaMain = '/muqadima_main';
  static const String muqadimaDetail = '/muqadima_detail';
  static const String pesheLafaz = '/peshe_lafaz';
  static const String pesheLafazDetail = '/peshe_lafaz_detail';
  static const String sawanehHayat = '/sawaneh_hayat';
  static const String sawanehHayatDetail = '/sawaneh_hayat_detail';
  static const String qalbeSaleemMain = '/qalbe_saleem_main';
  static const String qalbeSaleemDetail = '/qalbe_saleem_detail';
  static const String aqwalOIrshadatDetail = '/aqwal_o_irshadat_detail';
  static const String aqwalOIrshadat = '/aqwal_o_irshadat';
  static const String alfiraqMain = '/alfiraq_main';
  static const String alfiraqDetail = '/alfiraq_detail';
  static const String shajraNasabiya = '/shajra_nasabiya';
  static const String shajraHasebiya = '/shajra_hasebiya';
  static const String shajraNasebiyaMain = '/shajra_nasebiya_main';
  static const String shajraNasebiyaDetail = '/shajra_nasebiya_detail';
  static const String shajraHasebiyaMain = '/shajra_hasebiya_main';
  static const String shajraHasebiyaDetail = '/shajra_hasebiya_detail';
  static const String bottomMunqabat = '/bottom_munqabat';
  static const String bottomMunqabatDetail = '/bottom_munqabat_detail';
  static const String hawasheHawalaMain = '/hawashe_hawala_main';
  static const String hawasheHawalaDetail = '/hawashe_hawala_detail';
  static const String qathaTarekhMain = '/qatha_tarekh_main';
  static const String qathaTarekhDetail = '/qatha_tarekh_detail';

  static Map<String, WidgetBuilder> get routes => {
        splash: (context) => const SplashScreen(),
        dashboard: (context) => const DashBoardScreen(),
        munqabat: (context) => const ManqabatMain(),
        munqabatDetail: (context) => const ManqabatDetailScreen(),
        izharTashkor: (context) => const IzharTashkorMainScreen(),
        izharTashkorDetail: (context) => const IzharTashkorDetailScreen(),
        muqadimaMain: (context) => const MuqadimaAlkitabMain(),
        muqadimaDetail: (context) => const MuqadimaAlkitabDetailScreen(),
        pesheLafaz: (context) => const PesheLafazMainScreen(),
        pesheLafazDetail: (context) => const PesheLafazDetailScreen(),
        sawanehHayat: (context) => const SawanehHayatMainScreen(),
        sawanehHayatDetail: (context) => const SawanehHayatDetailScreen(),
        qalbeSaleemMain: (context) => const QalbeSaleemMainScreen(),
        qalbeSaleemDetail: (context) => const QalbeSaleemDetailScreen(),
        aqwalOIrshadatDetail: (context) => const AqwalOIrshadatDetailScreen(),
        aqwalOIrshadat: (context) => const AqwalOIrshadatMainScreen(),
        alfiraqMain: (context) => const AlFiraqMainScreen(),
        alfiraqDetail: (context) => const AlfiraqDetailScreen(),
        shajraNasabiya: (context) => const ShajraNasabiya(),
        shajraHasebiya: (context) => const ShajraHasebiya(),
        shajraNasebiyaMain: (context) => const ShajraNasebiyaMainScreen(),
        shajraNasebiyaDetail: (context) => const ShajraNasebiyaDetailScreen(),
        shajraHasebiyaMain: (context) => const ShajraHasebiyaMainScreen(),
        shajraHasebiyaDetail: (context) => const ShajraHasebiyaDetailScreen(),
        bottomMunqabat: (context) => const BottomManqabatMain(),
        bottomMunqabatDetail: (context) => const BottomManqabatDetailScreen(),
        hawasheHawalaMain: (context) => const HawasheHawalaMain(),
        hawasheHawalaDetail: (context) => const HawasheHawalaDetailScreen(),
        qathaTarekhMain: (context) => const QathaTarekhMain(),
        qathaTarekhDetail: (context) => const QathaTarekhDetailScreen(),
      };
}
