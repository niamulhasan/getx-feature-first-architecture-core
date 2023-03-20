import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/bindings/interfaces/feature_bindings.dart';
import '../presentation/controllers/home_tab.controller.dart';
import '../presentation/home.tab.dart';


class HomeTabBindings extends FeatureBinding implements BindingsTabBarAttachable {

  @override
  Future<void> bind() async {
    Get.lazyPut<HomeTabController>(() => HomeTabController());
  }

  @override
  Tab tab = const HomeTab().tab;

  @override
  Widget view = const HomeTab().view;


}

// class _HomeControllerBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut<TabsController>(
//       () => TabsController(),
//     );
//   }
// }
