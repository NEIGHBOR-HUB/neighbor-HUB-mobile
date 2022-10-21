// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sing_in_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SingInStore on SingInStoreBase, Store {
  final _$_isLoadingAtom = Atom(name: 'SingInStoreBase._isLoading');

  @override
  bool get _isLoading {
    _$_isLoadingAtom.reportRead();
    return super._isLoading;
  }

  @override
  set _isLoading(bool value) {
    _$_isLoadingAtom.reportWrite(value, super._isLoading, () {
      super._isLoading = value;
    });
  }

  final _$_exceptionAtom = Atom(name: 'SingInStoreBase._exception');

  @override
  SingInException get _exception {
    _$_exceptionAtom.reportRead();
    return super._exception;
  }

  @override
  set _exception(SingInException value) {
    _$_exceptionAtom.reportWrite(value, super._exception, () {
      super._exception = value;
    });
  }

  final _$SingInStoreBaseActionController =
      ActionController(name: 'SingInStoreBase');

  @override
  void setLoading() {
    final _$actionInfo = _$SingInStoreBaseActionController.startAction(
        name: 'SingInStoreBase.setLoading');
    try {
      return super.setLoading();
    } finally {
      _$SingInStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setException(SingInException exception) {
    final _$actionInfo = _$SingInStoreBaseActionController.startAction(
        name: 'SingInStoreBase.setException');
    try {
      return super.setException(exception);
    } finally {
      _$SingInStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
