// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthStore on AuthStoreBase, Store {
  Computed<String> _$emailComputed;

  @override
  String get email => (_$emailComputed ??=
          Computed<String>(() => super.email, name: 'AuthStoreBase.email'))
      .value;
  Computed<String> _$nameComputed;

  @override
  String get name => (_$nameComputed ??=
          Computed<String>(() => super.name, name: 'AuthStoreBase.name'))
      .value;
  Computed<String> _$accessTokenComputed;

  @override
  String get accessToken =>
      (_$accessTokenComputed ??= Computed<String>(() => super.accessToken,
              name: 'AuthStoreBase.accessToken'))
          .value;

  final _$_userAtom = Atom(name: 'AuthStoreBase._user');

  @override
  SingedUser get _user {
    _$_userAtom.reportRead();
    return super._user;
  }

  @override
  set _user(SingedUser value) {
    _$_userAtom.reportWrite(value, super._user, () {
      super._user = value;
    });
  }

  final _$_tokenAtom = Atom(name: 'AuthStoreBase._token');

  @override
  AccessToken get _token {
    _$_tokenAtom.reportRead();
    return super._token;
  }

  @override
  set _token(AccessToken value) {
    _$_tokenAtom.reportWrite(value, super._token, () {
      super._token = value;
    });
  }

  final _$_errorAtom = Atom(name: 'AuthStoreBase._error');

  @override
  TokenExpiredOrInvalid get _error {
    _$_errorAtom.reportRead();
    return super._error;
  }

  @override
  set _error(TokenExpiredOrInvalid value) {
    _$_errorAtom.reportWrite(value, super._error, () {
      super._error = value;
    });
  }

  final _$AuthStoreBaseActionController =
      ActionController(name: 'AuthStoreBase');

  @override
  void setSingedUser(SingedUser user) {
    final _$actionInfo = _$AuthStoreBaseActionController.startAction(
        name: 'AuthStoreBase.setSingedUser');
    try {
      return super.setSingedUser(user);
    } finally {
      _$AuthStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAccessToken(AccessToken token) {
    final _$actionInfo = _$AuthStoreBaseActionController.startAction(
        name: 'AuthStoreBase.setAccessToken');
    try {
      return super.setAccessToken(token);
    } finally {
      _$AuthStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setError(TokenExpiredOrInvalid error) {
    final _$actionInfo = _$AuthStoreBaseActionController.startAction(
        name: 'AuthStoreBase.setError');
    try {
      return super.setError(error);
    } finally {
      _$AuthStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
name: ${name},
accessToken: ${accessToken}
    ''';
  }
}
