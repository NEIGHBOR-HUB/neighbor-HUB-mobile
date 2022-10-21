import 'package:neighbor_hub/app/modules/auth/domain/errors/sing_up_errors.dart';

class DataSourceError extends SingUpException{
  DataSourceError([String message = "Network failed"]) : super(message);
}