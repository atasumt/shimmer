import 'package:architectural_building/global/controllers/initial_controller.dart';
import 'package:get/get.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(InitialController(), permanent: true);
  }
}
