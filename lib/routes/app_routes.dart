import 'package:get/get.dart';

import '../mvc/views/onboarding/splash_screen.dart';

class AppRoutes {
  static const splash = '/splash';





  static final routes = [
    GetPage(name: splash, page: () => const SplashScreen()),

  ];

}