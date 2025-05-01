class ApiConstants {

  static const String baseUrl = '';

  static Map<String, dynamic> get headerWithoutAuth =>{
    "Content-Type" : "application/json",
    "Accept" : "application/json"
  };

  static Map<String, dynamic> headerWithAuth (String token) =>{
    "Content-Type" : "application/json",
    "Accept" : "application/json",
    "Authorization" : "Bearer $token",
  };

}