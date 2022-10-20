
import 'package:neighbor_hub/app/modules/auth/domain/entities/access_token.dart';
import 'package:neighbor_hub/app/modules/auth/domain/entities/sing_in_user.dart';

abstract class SingInDataSource {
  Future<AccessToken> userSingIn(SingInParams params);
}
