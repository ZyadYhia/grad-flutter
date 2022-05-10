import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class CallApi {
  String _url = 'http://192.168.1.11:8000/api/register';
  //String _url = 'http://mark.dbestech.com/api/';
  postData(data) async {
    var fullUrl = _url;
    return await http.post(
      Uri.parse(fullUrl),
      body: jsonEncode(data),
      headers: _setHeaders(),
    );
  }

  _setHeaders() =>
      {'Content-type': 'application/json', 'Accept': 'application/json'};
}
