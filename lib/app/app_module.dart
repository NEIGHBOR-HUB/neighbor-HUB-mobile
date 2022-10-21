import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:neighbor_hub/app/core/constants/app_consts.dart';
import 'package:neighbor_hub/app/core/stores/auth_store.dart';
import 'package:neighbor_hub/app/core/utils/dio_client.dart';
import 'package:neighbor_hub/app/modules/auth/auth_module.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton<Dio>((i) => Dio(BaseOptions(
        connectTimeout: 15000,
        receiveTimeout: 15000,
        baseUrl: AppConsts.apiUrl))),
    Bind.singleton<HttpClient>((i) => DioClient(i(), i())),
    Bind.singleton<AuthStore>((i) => AuthStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: AuthModule()),
    ModuleRoute('/home', module: HomeModule()),
  ];

}