import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DioHelper
{
  static late Dio dio;
  static init(){
    dio = Dio(
      BaseOptions(
        baseUrl: 'http://192.168.1.11:8000/api/',
        receiveDataWhenStatusError: true,
        headers: {
          'lang':'ar',
          'Content-Type':'application/json',
        }
      ),
    );
  }
  
  static Future<Response> getData({
    required String url,
    required Map<String, dynamic> query,
}) async
  {
    return await dio.get(
      url,
      queryParameters: query,
    );
  }

  static Future<Response> postData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,

  }) async
  {
    return await dio.post(
      url,
      queryParameters: query,
      data: data,
    );
  }

  static Future<Response> registerUser(Map<String, dynamic>? data) async {
    try {
      Response response = await dio.post(
          'https://api.loginradius.com/identity/v2/auth/register',  //ENDPONT URL
          data: data, //REQUEST BODY
          queryParameters: {'apikey': '0a49e5a4-ac64-44a2-ac7b-14b25855b2f0'},  //QUERY PARAMETERS
          options: Options(headers: {'X-LoginRadius-Sott': 'gdszLWZZW+T+4fQYWZfTjvKc0mQKQEvJfar/fVsolr6dRU44aU90MgTu9NYyL+QjPIjXN8JLpd1Alvj18EZ39fLtKK8OqrnSkx1HKu32g0E=*39bc5cfa7f5ed3f457bcf890b38db466', //HEADERS
          }));
      //returns the successful json object
      return response.data;
    } on DioError catch (e) {
      //returns the error object if there is
      return e.response!.data;
    }
  }

  static Future<Response> login(String email, String password) async {
    try {
      Response response = await dio.post(
        'https://api.loginradius.com/identity/v2/auth/login',
        data: {
          'email': email,
          'password': password
        },
        queryParameters: {'apikey': 'YOUR_API_KEY'},
      );
      //returns the successful user data json object
      return response.data;
    } on DioError catch (e) {
      //returns the error object if any
      return e.response!.data;
    }
  }


}