part of '{{name.snakeCase()}}_cubit.dart';

@freezed
class {{name.pascalCase()}}State with _${{name.pascalCase()}}State{
const factory {{name.pascalCase()}}State.initial() = _Initial;
const factory {{name.pascalCase()}}State.loading() = _Loading;
const factory {{name.pascalCase()}}State.error(String message) = _Error;
const factory {{name.pascalCase()}}State.got{{name.pascalCase()}}(List<{{name.pascalCase()}}Model> {{name.snakeCase()}}) = _Got{{name.pascalCase()}};
}