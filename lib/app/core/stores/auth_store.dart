import 'package:mobx/mobx.dart';
import 'package:neighbor_hub/app/modules/auth/domain/entities/access_token.dart';
import 'package:neighbor_hub/app/modules/auth/domain/entities/sing_up_user.dart';
import '../errors/token_expired_or_invalid.dart';

part 'auth_store.g.dart';

class AuthStore = AuthStoreBase with _$AuthStore;

abstract class AuthStoreBase with Store {
  @observable
  SingedUser _user = SingedUser(email: "", id: 0, name: "", password: "");

  @observable
  AccessToken _token = AccessToken(accessToken: "", expiresAt: DateTime.now());

  @observable
  TokenExpiredOrInvalid _error = TokenExpiredOrInvalid();

  @computed
  String get email => _user.email;
  @computed
  String get name => _user.name;
  @computed
  String get accessToken => "Bearer " + _token.accessToken;

  @action
  void setSingedUser(SingedUser user) => _user = user;

  @action
  void setAccessToken(AccessToken token) => _token = token;

  @action
  void setError(TokenExpiredOrInvalid error) => _error = error;
}
