import 'package:dio/dio.dart';

abstract class Failures {
  final String errorMessage;

  Failures(this.errorMessage);
}

class FailureServer extends Failures {
  FailureServer(super.errorMessage);

  factory FailureServer.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return FailureServer('Conection timeOut with ApiServer');
      case DioExceptionType.sendTimeout:
        return FailureServer('Send  timeOut with ApiServer');
      case DioExceptionType.receiveTimeout:
        return FailureServer('Receive  timeOut with ApiServer');
      case DioExceptionType.badCertificate:
        return FailureServer('Certificate  timeOut with ApiServer');
      case DioExceptionType.badResponse:
        return FailureServer.fromResponse(
          dioException.response!.statusCode,
          dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return FailureServer('Request to ApiServer with cancel');
      case DioException.connectionError:
        return FailureServer('No internet connection');
      case DioExceptionType.unknown:
        return FailureServer('Unexpected error, please try again!');
      default:
        return FailureServer('oops there was an error , please try again');
    }
  }
  factory FailureServer.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return FailureServer(response['error']['message']);
    } else if (statusCode == 404) {
      return FailureServer('Youre request not found, Please try later!');
    } else if (statusCode == 500) {
      return FailureServer('Internet server error,Please try later! ');
    } else {
      return FailureServer('oops there was an error , please try again');
    }
  }
}
