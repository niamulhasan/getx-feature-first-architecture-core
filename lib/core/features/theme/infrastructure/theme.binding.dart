import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../bindings/interfaces/feature_bindings.dart';
import '../presentation/components/theme_toggle_switch.dart';
import '../domain/entities/repositories/theme_repository.dart';
import 'repositories/dracula_theme_repository.dart';


class ThemeBindings extends FeatureBinding implements BindingsAppBarActionAttachable {

  @override
  Future<void> bind() async {
    Get.lazyPut<ThemeRepository>(() => DraculaThemeRepository(), fenix: true);
  }

  //TODO: think about Get.find() here
  @override
  List<Widget> appbarActions = [ThemeToggleSwitch(Get.find())];
}
