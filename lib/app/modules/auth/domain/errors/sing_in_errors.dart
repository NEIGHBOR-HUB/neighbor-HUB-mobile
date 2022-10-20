import 'package:neighbor_hub/app/core/errors/failure.dart';

class SingInException implements Failure {
  final String message;
  final StackTrace stackTrace;

  const SingInException(this.message, [this.stackTrace]);
}

class DoNothing extends SingInException {
  DoNothing(String message) : super(message);
}

class MissingRequiredValue extends SingInException {
  MissingRequiredValue(String message) : super(message);
}

class InvalidCredentials extends SingInException {
  const InvalidCredentials([String message = "Invalid email/password"]) : super(message);
}
