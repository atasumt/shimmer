import 'package:architectural_building/global/interceptors/dio/dio_main_interceptor.dart';
import 'package:dio/dio.dart';

Dio getDio(BaseOptions baseOptions) {
  Dio dio = Dio(baseOptions);
  dio.interceptors.add(dioMainInterceptor());
  return dio;
}
