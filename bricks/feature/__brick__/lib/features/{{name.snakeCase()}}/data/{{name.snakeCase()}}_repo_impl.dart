


import 'package:injectable/injectable.dart';

import '../../../core/logical/abstract/models.dart';
import '../domain/{{name.snakeCase()}}_params.dart';
import '../domain/{{name.snakeCase()}}_model.dart';
import '../domain/{{name.snakeCase()}}_repo.dart';
import '{{name.snakeCase()}}_remote_ds.dart';
import '../../../core/logical/abstract/repository.dart';

@LazySingleton(as: I{{name.pascalCase()}}Repo)
class {{name.pascalCase()}}RepoImpl implements I{{name.pascalCase()}}Repo{
  const {{name.pascalCase()}}RepoImpl(
    this._remoteDS,
  );
  final I{{name.pascalCase()}}RemoteDS _remoteDS;

  @override
  FutureEither<List<{{name.pascalCase()}}Model>> getAll({{name.pascalCase()}}Params params) {
    return sendRequest(
      () => _remoteDS.getAll(params),
    );
  }
}