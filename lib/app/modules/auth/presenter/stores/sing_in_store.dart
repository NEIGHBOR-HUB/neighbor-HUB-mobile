import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:neighbor_hub/app/core/stores/auth_store.dart';
import 'package:neighbor_hub/app/modules/auth/domain/entities/sing_in_user.dart';
import 'package:neighbor_hub/app/modules/auth/domain/errors/sing_in_errors.dart';
import 'package:neighbor_hub/app/modules/auth/domain/usecases/user_sing_in.dart';

part 'sing_in_store.g.dart';

class SingInStore = SingInStoreBase with _$SingInStore;

abstract class SingInStoreBase with Store {
  final UserSingIn usecase;
  final AuthStore authStore;

  SingInStoreBase(this.usecase, this.authStore);

  @observable
  bool _isLoading = false;

  @observable
  SingInException _exception = SingInException("");

  @action
  void setLoading() => _isLoading = !_isLoading;

  @action
  void setException(SingInException exception) => _exception = exception;

  Future<void> userSingIn(String email, String password) async {
    final params = SingInParams(
      email: email,
      password: password,
    );
    setLoading();
    final result = await usecase.call(params);
    result.fold((l) {
      setException(l);
      // setException(DoNothing("Nothing"));
    }, (r) {
      authStore.setAccessToken(r);
      Modular.to.pushNamed("/home/");
    });
    setLoading();
  }
}
