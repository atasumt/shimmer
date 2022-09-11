import 'package:architectural_building/moduls/home/pages/home_page/controllers/home_page_controller.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeMainPageViewController>(
      () => HomeMainPageViewController(),
      fenix: true,
    );
  }
}
