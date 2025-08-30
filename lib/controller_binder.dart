import 'package:get/get.dart';

import 'mvc/controllers/bottom_nav_bar_controller.dart';

class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(BottomNavBarController());

  }
}