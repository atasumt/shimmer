import 'package:architectural_building/global/abstracts/future_abstract.dart';
import 'package:architectural_building/global/model/reqres_model/reqres_model.dart';
import 'package:architectural_building/global/services/home/home_service.dart';
import 'package:get/get.dart';

class HomeMainPageViewController extends GetxController implements IFutureAbstract {
  final postData = ReqresModel().obs;
  var postsFuture = Future.value(ReqresModel()).obs;
  final mainFuture = Future.wait([]).obs;
  @override
  void onInit() {
    super.onInit();
    updateMainFuture();
  }

  @override
  void assignFuture(List data) {
    final datas = [postData];
    data.forEach((element) {
      datas[data.indexOf(element)].value = element;
    });
  }

  @override
  void updateMainFuture() {
    getHomePost();
    mainFuture.value = Future.wait([postsFuture.value]);
    update(['main']);
  }

  void getHomePost() {
    postsFuture.value = homePostService();
  }
}
