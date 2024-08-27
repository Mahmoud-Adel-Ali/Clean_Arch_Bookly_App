import 'package:dio/dio.dart';

class Failure {
  final String message;

  Failure({required this.message});
}

class ServerFailure extends Failure {
  ServerFailure({required super.message});

  factory ServerFailure.fromDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(message: 'Connection time out with api server');
      case DioExceptionType.sendTimeout:
        return ServerFailure(message: 'Send time out with api server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(message: 'Receive time out with api server');
      case DioExceptionType.badCertificate:
        return ServerFailure(message: 'badCertificate with api server');
      case DioExceptionType.cancel:
        return ServerFailure(message: 'Request to Api is canceld');
      case DioExceptionType.connectionError:
        return ServerFailure(message: 'No internet Connected');
      case DioExceptionType.unknown:
        return ServerFailure(
            message: 'Oops : There was an error , please try agin');
      case DioExceptionType.badResponse:
    }
  }

}
