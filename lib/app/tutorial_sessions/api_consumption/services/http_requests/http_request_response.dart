import 'package:flutter_tuts/app/tutorial_sessions/api_consumption/services/http_requests/http_response_codes.dart';

class SuccessResponse {
  dynamic responseCode;
  Object? response;

  SuccessResponse({this.response, this.responseCode});
}

class FailedResponse {
  final dynamic responseCode;
  Object? response;
  String? code;
  final String? responseTitle;
  final dynamic apiError;

  FailedResponse(
      {this.responseCode,
      this.response,
      this.code,
      this.responseTitle,
      this.apiError});

  @override
  String toString() => response?.toString() ?? apiError?.toString() ?? "";

  static FailedResponse failedNetwork(dynamic apiError) => FailedResponse(
      responseCode: httpNoInternet,
      apiError: apiError,
      responseTitle: "Network Error",
      response: "Poor Internet Connection. Try again later");

  static FailedResponse unknownError(dynamic apiError) => FailedResponse(
      responseCode: httpUnkownErrorCode,
      apiError: apiError,
      responseTitle: "Unknown Error",
      response: "Oops!! something went wrong . Try again later");

  static FailedResponse invalidFormat(dynamic apiError) => FailedResponse(
      responseCode: httpInvalidFormat,
      apiError: apiError,
      responseTitle: "Invalid Format",
      response: "Oops!! something went wrong . Try again later");

  static FailedResponse timeOutError(dynamic apiError) => FailedResponse(
      responseCode: httpTimeOut,
      apiError: apiError,
      responseTitle: "Http Timeout",
      response: "Oops!! something went wrong . Try again later");
}
