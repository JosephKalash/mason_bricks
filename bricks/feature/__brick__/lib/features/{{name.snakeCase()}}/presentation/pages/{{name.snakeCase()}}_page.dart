
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:{{name.snakeCase()}}/injectable/injecter.dart';
import 'package:auto_route/auto_route.dart';
import '../cubit/{{name.snakeCase()}}_cubit.dart';

@RoutePage()
class {{name.pascalCase()}}Page extends StatelessWidget {
  const {{name.pascalCase()}}Page();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      child: BlocProvider(
        create: (_) => getIt<{{name.pascalCase()}}Cubit>(),
        child:  const _PageContent(),
      ),
    );
  }
}

class _PageContent extends StatefulWidget {
  const _PageContent({super.key});

  @override
  State<_PageContent> createState() => __PageContentState();
}

class __PageContentState extends State<_PageContent> {
  @override
  void initState() {
    super.initState();
}

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}