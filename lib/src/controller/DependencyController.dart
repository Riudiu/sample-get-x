import 'package:get/get.dart';

class DependencyController extends GetxController {
  static DependencyController get to => Get.find();

  void access() {
    print("DependencyController 호출");
  }

  int number = 41;
  void minus() {
    number--;
    update();
  }
}
