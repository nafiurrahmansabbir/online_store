import 'package:get/get.dart';

import 'features/onboarding/splash_screen.dart';


class AppRoutes {
  static const splash = '/splash';





  static final routes = [
    GetPage(name: splash, page: () => const SplashScreen()),

  ];

}