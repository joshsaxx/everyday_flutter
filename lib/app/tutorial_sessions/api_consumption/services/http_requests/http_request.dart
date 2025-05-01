import 'dart:convert';

import 'package:flutter_tuts/app/tutorial_sessions/api_consumption/services/http_requests/http_request_type.dart';
import 'package:http/http.dart' as client;

class AppHttpRequest{
  final RequestType? type;
  final String? body;
  final String url;
  final Map<String,dynamic>? header;

  AppHttpRequest(this.type, this.url, this.header, {this.body});

  Map<String, dynamic> _parseResponseBody (client.Response? response){
    try{
      if(response?.body == null || response?.body.isEmpty == true){
        return {};
      }
      var data = json.decode(response?.body ?? '');

      if(data is List<dynamic>){
        return {'data': data};
      }

      if(data is Map<String, dynamic>){
        return data;
      }

      return {'data': data};

    }catch(e){
      print('AppHtttpRequestError: $e');
      return {'parse_error': e.toString(), 'raw': response?.body};
    }
  }


}