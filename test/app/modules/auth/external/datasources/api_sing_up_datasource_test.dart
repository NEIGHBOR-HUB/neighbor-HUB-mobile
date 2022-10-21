import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:neighbor_hub/app/core/utils/dio_client.dart';
import 'package:neighbor_hub/app/modules/auth/domain/entities/sing_up_user.dart';
import 'package:neighbor_hub/app/modules/auth/external/datasources/api_sing_up_datasource.dart';
import 'package:neighbor_hub/app/modules/auth/infra/adapters/sing_up_adapters.dart';
import 'package:neighbor_hub/app/modules/auth/infra/errors/sing_up_infra_errors.dart';

class CustomDioMock extends Mock implements HttpClient {}

void main() {
  final dioClient = CustomDioMock();
  final datasource = ApiSingUpDatasource(dioClient);
  final params = SingUpParams(
      email: "teste@gmail.com", password: "123", name: "Testador Pereira");

  final dataResponse = <String, dynamic>{
    "id": 1,
    "email": "teste@gmail.com",
    "password": "123",
    "name": "Testador Pereira"
  };
  test('Should return a SingedUser', () async {
    when(() => dioClient.post(route:"/auth/sing-up", data: SingUpParamsAdpter.toMap(params))).thenAnswer(
      (_) async => Response(
            data: dataResponse,
            statusCode: 201,
            requestOptions: RequestOptions(path: '/')));
    final response = await datasource.userSingUp(params);
    expect(response, isA<SingedUser>());
  });

  test('Should throw a DataSourceError', () async {
    when(() => dioClient.post(route:"/auth/sing-up", data: SingUpParamsAdpter.toMap(params))).thenAnswer(
      (_) async => Response(
            data: dataResponse,
            statusCode: 200,
            requestOptions: RequestOptions(path: '/')));
    expect(() async => await datasource.userSingUp(params), throwsA(isA<DataSourceError>()));
  });

}
