import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/providers/providers.dart';

class TabsController extends GetxController with GetSingleTickerProviderStateMixin {
 final List<Tab> tabs = Providers.tabBarProvider.getTabBarTabs;
 final List<Widget> views = Providers.tabBarProvider.getTabBarViews;

  late TabController tabController;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
