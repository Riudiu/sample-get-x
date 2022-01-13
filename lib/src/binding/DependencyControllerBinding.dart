import 'package:get/get.dart';
import 'package:sample_get_x/src/controller/DependencyController.dart';

class DependencyControllerBinding extends Bindings {
  @override
  void dependencies() {
    // Get.put(DependencyController());
    Get.lazyPut(() => DependencyController());
  }
}
