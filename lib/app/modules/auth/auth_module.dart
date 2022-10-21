import 'package:flutter_modular/flutter_modular.dart';
import 'package:neighbor_hub/app/modules/auth/domain/repositories/sing_in_repository.dart';
import 'package:neighbor_hub/app/modules/auth/domain/repositories/sing_up_repository.dart';
import 'package:neighbor_hub/app/modules/auth/domain/usecases/user_sing_in.dart';
import 'package:neighbor_hub/app/modules/auth/domain/usecases/user_sing_up.dart.dart';
import 'package:neighbor_hub/app/modules/auth/external/datasources/api_sing_in_datasource.dart';
import 'package:neighbor_hub/app/modules/auth/external/datasources/api_sing_up_datasource.dart';
import 'package:neighbor_hub/app/modules/auth/infra/datasources/sing_in_data_source.dart';
import 'package:neighbor_hub/app/modules/auth/infra/datasources/sing_up_datasource.dart';
import 'package:neighbor_hub/app/modules/auth/infra/repositories/sing_in_repository_impl.dart';
import 'package:neighbor_hub/app/modules/auth/infra/repositories/sing_up_repository_impl.dart';
import 'package:neighbor_hub/app/modules/auth/presenter/pages/sing_in_page.dart';
import 'package:neighbor_hub/app/modules/auth/presenter/stores/sing_in_store.dart';
class AuthModule extends Module {
  @override
  final List<Bind> binds = [
    //datasource
    Bind.factory<SingUpDataSource>((i) => ApiSingUpDatasource(i())),
    Bind.factory<SingInDataSource>((i) => ApiSingInDatasource(i())),
    //repositories
    Bind.factory<SingUpRepository>((i) => SingUpRepositoryImpl(i())),
    Bind.factory<SingInRepository>((i) => SingInRepositoryImpl(i())),
    //usecase
    Bind.factory<UserSingUp>(((i) => UserSingUpImpl(i()))),
    Bind.factory<UserSingIn>(((i) => UserSingInImpl(i()))),
    //store
    Bind.factory<SingInStore>((i) => SingInStore(i(), i()))
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/',
        child: (_, args) => SingInPage(store: Modular.get<SingInStore>())),
  ];
}
