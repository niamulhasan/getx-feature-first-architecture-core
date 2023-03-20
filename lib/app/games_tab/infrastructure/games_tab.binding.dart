import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/bindings/interfaces/feature_bindings.dart';
import '../presentation/controllers/games_tab.controller.dart';
import '../presentation/games.tab.dart';

class GamesTabBindings extends FeatureBinding
    implements BindingsTabBarAttachable {
  @override
  Future<void> bind() async {
    Get.lazyPut<GamesTabController>(() => GamesTabController());
  }

  @override
  Tab tab = const GamesTab().tab;

  @override
  Widget view = const GamesTab().view;
}
