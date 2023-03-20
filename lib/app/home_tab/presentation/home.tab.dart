import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/providers/providers/tab_bar/app_tab_view.dart';
import 'controllers/home_tab.controller.dart';



class HomeTab implements AppTabView {
  const HomeTab();
  @override
  Tab get tab => const Tab(text: 'Home');
  @override
  Widget get view => const _HomeTabView();
}

class _HomeTabView extends GetView<HomeTabController> {
  const _HomeTabView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('HomeTabView'),
    );
  }

}
