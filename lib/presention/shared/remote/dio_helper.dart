import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://accept.paymob.com/api/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({
    required String url,
  }) async {
    dio.options.headers = {
      'Content-Type': 'Application/json',
    };
    return await dio.get(
      url,
    );
  }

  static Future<Response> postData({
    required String url,
    required Map<String, dynamic> data,
  }) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
    };
    return await dio.post(
      url,
      data: data,
    );
  }
}
