import 'package:architectural_building/global/controllers/initial_controller.dart';
import 'package:architectural_building/moduls/home/pages/home_page/home_page_view.dart';
import 'package:architectural_building/moduls/home/pages/orders_page/orders_page_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  final InitialController _initialController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(title: Text('ARC')),
        body: _initialController.pageController.value == 0
            ? HomeMainPageView()
            : _initialController.pageController.value == 1
                ? OrdersPageView()
                : Container(),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Ana Sayfa',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.abc_sharp), label: 'Siparişler'),
          ],
          currentIndex: _initialController.pageController.value,
          onTap: (position) {
            _initialController.pageController.value = position;
          },
        ),
      ),
    );
  }
}
