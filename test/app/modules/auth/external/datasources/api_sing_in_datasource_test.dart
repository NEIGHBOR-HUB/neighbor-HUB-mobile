import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:neighbor_hub/app/core/utils/dio_client.dart';
import 'package:neighbor_hub/app/modules/auth/domain/entities/access_token.dart';
import 'package:neighbor_hub/app/modules/auth/domain/entities/sing_in_user.dart';
import 'package:neighbor_hub/app/modules/auth/domain/entities/sing_up_user.dart';
import 'package:neighbor_hub/app/modules/auth/external/datasources/api_sing_in_datasource.dart';
import 'package:neighbor_hub/app/modules/auth/infra/adapters/sing_in_adpters.dart';
import 'package:neighbor_hub/app/modules/auth/infra/errors/sing_in_data_source_exception.dart';

class CustomDioMock extends Mock implements HttpClient {}

void main() {
  final dioClient = CustomDioMock();
  final datasource = ApiSingInDatasource(dioClient);
  final params = SingInParams(
      email: "teste@gmail.com", password: "123");

  final dataResponse = <String, dynamic>{
    "access_token": "dsaddasdasdas",
    "expires_at": DateTime.now().toString()
  };

  test('Should return a SingedUser', () async {
    when(() => dioClient.post(route: '/login', data: SingInParamsAdpters.toMap(params))).thenAnswer(
      (_) async => Response(
            data: dataResponse,
            statusCode: 200,
            requestOptions: RequestOptions(path: '/')));
    final response = await datasource.userSingIn(params);
    expect(response, isA<AccessToken>());
  });

  test('Should throw a DataSourceError', () async {
    when(() => dioClient.post(route: '/login', data: SingInParamsAdpters.toMap(params))).thenAnswer(
      (_) async => Response(
            data: dataResponse,
            statusCode: 201,
            requestOptions: RequestOptions(path: '/')));
    expect(() async => await datasource.userSingIn(params), throwsA(isA<SingInDataSourceException>()));
  });

}
