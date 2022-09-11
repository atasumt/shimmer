import 'dart:io';

import 'package:architectural_building/global/common/global_shimmer.dart';
import 'package:architectural_building/moduls/home/pages/home_page/controllers/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeMainPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeMainPageViewController>(
      id: 'main',
      builder: (controller) {
        return FutureBuilder(
            future: controller.mainFuture.value,
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.active:
                case ConnectionState.waiting:
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: globalShimmer(),
                  );
                case ConnectionState.done:
                  if (snapshot.hasError) {
                    return Container();
                  }
                  controller.assignFuture((snapshot.data != null ? snapshot.data as List : []));

                  return  Center(child: Text('${controller.postData.value.data?.firstName}'));

                default:
                  return Container();
              }
            });
      },
    );
  }
}
