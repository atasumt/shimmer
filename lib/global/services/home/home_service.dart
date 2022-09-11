import 'package:architectural_building/global/endpoints/home/home_endpoint.dart';
import 'package:architectural_building/global/interceptors/dio/dio_config.dart';
import 'package:architectural_building/global/interceptors/dio/get_dio.dart';
import 'package:architectural_building/global/model/reqres_model/reqres_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

Future<ReqresModel> homePostService() async {
  try {
    Response response = await getDio(dioOptions).get(homeCategoryURL());
    ReqresModel posts = ReqresModel.fromJson(response.data);
    return posts;
  } catch (e) {
    if (kDebugMode) {
      print(e);
    }
    return ReqresModel();
  }
}
