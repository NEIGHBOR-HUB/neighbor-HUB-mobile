

class AuthStore extends NotifierStore<TokenExpiredOrInvalid, AccessToken> {
  AuthStore() : super(AccessToken(accessToken: "", expiresAt: DateTime.now()));
  late SingedUser _user;
  void setSingedUser(SingedUser user) => _user = user;

  String get email => _user.email;
  String get name => _user.name;
  String get accessToken => "Bearer " + state.accessToken;
}
