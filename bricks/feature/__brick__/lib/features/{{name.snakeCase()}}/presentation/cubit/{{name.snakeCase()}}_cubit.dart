import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/logical/utils/funcs.dart' show getErrorMessage;
import '../../domain/{{name.snakeCase()}}_params.dart';
import '../../domain/{{name.snakeCase()}}_repo.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

part '{{name.snakeCase()}}_cubit.freezed.dart';
part '{{name.snakeCase()}}_state.dart';

@injectable
class {{name.pascalCase()}}Cubit extends Cubit<{{name.pascalCase()}}State> {
  {{name.pascalCase()}}Cubit(this._repo) : super(const {{name.pascalCase()}}State.initial());

  final I{{name.pascalCase()}}Repo _repo;
  final params = {{name.pascalCase()}}Params();

  void rest() {
    params.reset();
  }

  Future<void> get{{name.pascalCase()}}() async {
    emit(const {{name.pascalCase()}}State.loading());

    final either = await _repo.getAll(params);

    either.fold(
      (error) => emit({{name.pascalCase()}}State.error(getErrorMessage(error))),
      (dataList) => emit({{name.pascalCase()}}State.got{{name.pascalCase()}}(dataList)),
    );
  }
}
