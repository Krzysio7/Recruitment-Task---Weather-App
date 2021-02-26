import 'dart:io';

import 'package:dio/dio.dart';
import 'package:weather_app/exceptions.dart';
import 'package:weather_app/generated/l10n.dart';

abstract class ApiHelper {
  static Exception getApiError(error) {
    print(error);
    if (error is Exception) {
      try {
        AppException appException;
        if (error is DioError) {
          switch (error.type) {
            case DioErrorType.CANCEL:
              appException = RequestCancelled(S.current.requestCancelled);
              break;
            case DioErrorType.CONNECT_TIMEOUT:
              appException = RequestTimeout(S.current.connectionRequestTimeout);
              break;
            case DioErrorType.DEFAULT:
              appException =
                  NoInternetConnection(S.current.noInternetConnection);
              break;
            case DioErrorType.RECEIVE_TIMEOUT:
              appException = SendTimeout(S.current.sendTimeout);
              break;
            case DioErrorType.RESPONSE:
              switch (error.response.statusCode) {
                case 400:
                  appException = BadRequestException(error.response.data);
                  break;
                case 401:
                  appException =
                      UnauthorizedException(S.current.unauthorizedRequest);
                  break;
                case 403:
                  appException =
                      ForbiddenException(S.current.unauthorizedRequest);
                  break;
                case 404:
                  appException = NotFoundException(S.current.notFound);
                  break;
                case 409:
                  appException = ConflictException(S.current.conflictException);
                  break;
                case 408:
                  appException =
                      RequestTimeout(S.current.connectionRequestTimeout);
                  break;
                case 422:
                  appException = ValidationException(error.response.data);
                  break;
                case 500:
                  appException =
                      InternalServerException(S.current.internalServerError);
                  break;
                case 503:
                  appException =
                      ServiceUnavailable(S.current.serviceUnavailable);
                  break;
                default:
                  appException = AppException(S.current.invalidStatusCode);
              }
              break;
            case DioErrorType.SEND_TIMEOUT:
              appException = SendTimeout(S.current.sendTimeout);
              break;
          }
        } else if (error is SocketException) {
          appException = NoInternetConnection(S.current.noInternetConnection);
        } else {
          appException = AppException(S.current.unexpectedError);
        }
        return appException;
      } on FormatException catch (e) {
        print(e);
        // Helper.printError(e.toString());
        return FormatException(S.current.unexpectedError);
      } catch (_) {
        return AppException(S.current.unexpectedError);
      }
    } else {
      if (error.toString().contains("is not a subtype of")) {
        return AppException(S.current.unableToProcessError);
      } else {
        return AppException(S.current.unexpectedError);
      }
    }
  }

  static ErrorMessage getErrorMessage(Exception exp) {
    if (exp is AppException) {
      String message;
      message = exp.data;

      if (exp is NoInternetConnection) {
        return ErrorMessage(message, true);
      }

      return ErrorMessage(
        message,
      );
    }
    print(exp);
    return ErrorMessage(
      S.current.unexpectedError,
    );
  }
}

class ErrorMessage {
  final String message;
  final bool showReload;

  const ErrorMessage(this.message, [this.showReload = false]);

  factory ErrorMessage.reload(String message) => ErrorMessage(message, true);
}
