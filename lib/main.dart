import 'package:architectural_building/global/inital/initial_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'global/utils/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: routes,
      initialBinding: InitialBinding(),
    );
  }
}
