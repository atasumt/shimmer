import 'package:architectural_building/global/bindings/home/home_binding.dart';
import 'package:architectural_building/moduls/home/home_view.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>> routes = [
  GetPage(
    name: '/',
    page: () => HomeView(),
    binding: HomeBinding(),
  ),
];
