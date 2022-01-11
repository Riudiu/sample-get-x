import 'package:get/get.dart';

class CountControllerWithGetXById extends GetxController {
  int count = 0;
  void increase(String id) {
    count++;
    update([id]);
  }
}
