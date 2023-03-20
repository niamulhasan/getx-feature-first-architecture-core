import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/providers/providers/tab_bar/app_tab_view.dart';
import 'controllers/{{name}}_tab.controller.dart';

class {{name.pascalCase()}}Tab implements AppTabView {
  const {{name.pascalCase()}}Tab();
  @override
  Tab get tab => const Tab(text: '{{name.pascalCase()}}');
  @override
  Widget get view => const _{{name.pascalCase()}}TabView();
}

class _{{name.pascalCase()}}TabView extends GetView<{{name.pascalCase()}}TabController> {
  const _{{name.pascalCase()}}TabView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('{{name.pascalCase()}} TabView'),
    );
  }
}
