import 'package:get/get.dart';

import 'features/home/controllers/bottom_nav_bar_controller.dart';


class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(BottomNavBarController());

  }
}