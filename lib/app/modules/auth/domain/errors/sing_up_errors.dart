
import 'package:neighbor_hub/app/core/errors/failure.dart';

class SingUpException implements Failure {
  final String message;
  final StackTrace stackTrace;

  const SingUpException(this.message, [this.stackTrace]);
}

class DoNothing extends SingUpException{
  DoNothing(String message) : super(message);
}

class MissingRequiredValue extends SingUpException {
  MissingRequiredValue(String message) : super(message);
}

class EmailOutOfPattern extends SingUpException {
  EmailOutOfPattern(String message) : super(message);
}

class PasswordOutOfPattern extends SingUpException {
  PasswordOutOfPattern(String message) : super(message);
}

class EmailAlreadyUsed extends SingUpException {
  EmailAlreadyUsed([String message = "Email already in use"]) : super(message);
}
