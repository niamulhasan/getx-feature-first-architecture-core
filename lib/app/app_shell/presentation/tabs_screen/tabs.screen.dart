import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../domain/entities/app_app_bar.dart';
import 'controllers/tabs.controller.dart';


class TabsScreen extends GetView<TabsController> {

  final AppAppBar appAppBar;

  const TabsScreen({Key? key, required this.appAppBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar,
      bottomNavigationBar: TabBar(
        controller: controller.tabController,
        tabs: controller.tabs,
      ),
      body: TabBarView(
        controller: controller.tabController,
        children: controller.views,
      ),
    );
  }
}
