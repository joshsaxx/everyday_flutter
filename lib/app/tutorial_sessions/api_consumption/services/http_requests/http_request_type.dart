import 'package:http/http.dart' as client;

enum RequestType {
  get, post, put, delete, patch
}

extension RequestTypeExtension on RequestType{
  String get name {
    return toString().split('.').last;
  }

  Future <client.Response?>? getResponse(String urlString, dynamic header, {Object? body}) async {

    final url = Uri.parse(urlString);

    final Map<String, String> headerMap = {};

    if(header != null && header is Map){
      header.forEach((key, value){
        if(key is String && value != null){

          headerMap[key] = value.toString();

        }

      });
    }

    switch (this){

      case RequestType.get: 
      return await client.get(url,headers: headerMap);

      case RequestType.post:
      return await client.post(url, headers: headerMap, body: body);

      case RequestType.put:
      return await client.put(url, headers: headerMap, body: body);

      case RequestType.patch:
      return await client.patch(url, headers: headerMap, body: body);

      case RequestType.delete:
      return await client.delete(url, headers: headerMap, body: body);

    }

  }
}