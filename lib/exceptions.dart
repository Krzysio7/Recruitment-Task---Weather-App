class AppException<T> implements Exception {
  final T data;

  AppException([this.data]);

  @override
  String toString() {
    return data.toString();
  }
}

class InternalServerException extends AppException<String> {
  InternalServerException(String message) : super(message);
}

class BadRequestException extends AppException<String> {
  BadRequestException(String data) : super(data);
}

class ForbiddenException extends AppException<String> {
  ForbiddenException(String data) : super(data);
}

class UnauthorizedException extends AppException<String> {
  UnauthorizedException(String data) : super(data);
}

class ValidationException extends AppException<String> {
  ValidationException(String data) : super(data);
}

class NotFoundException extends AppException<String> {
  NotFoundException(String data) : super(data);
}

class RequestCancelled extends AppException<String> {
  RequestCancelled(String message) : super(message);
}

class RequestTimeout extends AppException<String> {
  RequestTimeout(String message) : super(message);
}

class NoInternetConnection extends AppException<String> {
  NoInternetConnection(String message) : super(message);
}

class SendTimeout extends AppException<String> {
  SendTimeout(String message) : super(message);
}

class ConflictException extends AppException<String> {
  ConflictException(String message) : super(message);
}

class ServiceUnavailable extends AppException<String> {
  ServiceUnavailable(String message) : super(message);
}

class FormatException extends AppException<String> {
  FormatException(String message) : super(message);
}

class UnsupportedException extends AppException<String> {
  UnsupportedException(String message) : super(message);
}
