import 'package:dio/dio.dart';

InterceptorsWrapper dioMainInterceptor() {
  return InterceptorsWrapper(onRequest: (requestOptions, handler) {
    requestOptions.queryParameters.removeWhere((key, value) => value == "");
    return handler.next(requestOptions);
  }, onResponse: (response, handler) {
    if (response.requestOptions.data != null) {
      var requestData = response.requestOptions.data as FormData;
    }
    return handler.next(response);
  }, onError: (DioError e, handler) {
    if (e.requestOptions.data != null) {
      var requestData = e.requestOptions.data as FormData;
    }
    return handler.next(e);
  });
}
