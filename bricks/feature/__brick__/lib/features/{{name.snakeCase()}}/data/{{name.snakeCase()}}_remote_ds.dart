
import '../domain/{{name.snakeCase()}}_params.dart';
import '../domain/{{name.snakeCase()}}_model.dart';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';


abstract class I{{name.pascalCase()}}RemoteDS{
  Future<List<{{name.pascalCase()}}Model>> getAll({{name.pascalCase()}}Params params);
}


@LazySingleton(as: I{{name.pascalCase()}}RemoteDS)
class {{name.pascalCase()}}RemoteDSImpl implements I{{name.pascalCase()}}RemoteDS{
  const {{name.pascalCase()}}RemoteDSImpl(this._dio);
  final Dio _dio;

  @override
  Future<List<{{name.pascalCase()}}Model>> getAll({{name.pascalCase()}}Params params) async {
    final res = await _dio.get(
      {{name.pascalCase()}}Url,
      queryParameters: params.toJson(),
    );
    return (res.data as List).map((e) => {{name.pascalCase()}}Model.fromJson(e)).toList();
  }
}