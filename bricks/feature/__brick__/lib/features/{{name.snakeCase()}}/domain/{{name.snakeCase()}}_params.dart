
import '../../../core/logical/abstract/models.dart';

class {{name.pascalCase()}}Params {
  {{name.pascalCase()}}Params({this.generalParams});

  final GeneralParams? generalParams;

  void reset(){
    generalParams?.reset();
  }

  Map<String, dynamic> toJson() => {
        if (generalParams != null) ...generalParams!.toJson(),
      };
}