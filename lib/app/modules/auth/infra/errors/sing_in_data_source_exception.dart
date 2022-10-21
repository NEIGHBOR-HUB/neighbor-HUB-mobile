
import 'package:neighbor_hub/app/modules/auth/domain/errors/sing_in_errors.dart';

class SingInDataSourceException extends SingInException {
  SingInDataSourceException([String message = "Network Failed"]) : super(message);
}
