
import 'package:dartz/dartz.dart';
import 'package:neighbor_hub/app/modules/auth/domain/entities/access_token.dart';
import 'package:neighbor_hub/app/modules/auth/domain/entities/sing_in_user.dart';
import 'package:neighbor_hub/app/modules/auth/domain/errors/sing_in_errors.dart';

abstract class SingInRepository {
  Future<Either<SingInException, AccessToken>> userSingIn(SingInParams params);
}
