import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/bindings/interfaces/feature_bindings.dart';
import '../presentation/controllers/{{name}}_tab.controller.dart';
import '../presentation/{{name}}.tab.dart';

class {{name.pascalCase()}}TabBindings extends FeatureBinding
    implements BindingsTabBarAttachable {
  @override
  Future<void> bind() async {
    Get.lazyPut<{{name.pascalCase()}}TabController>(() => {{name.pascalCase()}}TabController());
  }

  @override
  Tab tab = const {{name.pascalCase()}}Tab().tab;

  @override
  Widget view = const {{name.pascalCase()}}Tab().view;
}
