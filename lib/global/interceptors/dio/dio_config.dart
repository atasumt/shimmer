import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

String baseUrl = kDebugMode ? "https://reqres.in" : "https://reqres.in/jdjd";

BaseOptions dioOptions = BaseOptions(
  baseUrl: baseUrl,
  responseType: ResponseType.json,
);
