import '../../../core/logical/abstract/models.dart';
import '{{name.snakeCase()}}_params.dart';
import '{{name.snakeCase()}}_model.dart';

abstract class I{{name.pascalCase()}}Repo{
  FutureEither<List<{{name.pascalCase()}}Model>> getAll({{name.pascalCase()}}Params params);
}