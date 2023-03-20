import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/providers/providers/tab_bar/app_tab_view.dart';
import 'controllers/games_tab.controller.dart';

class GamesTab implements AppTabView {
  const GamesTab();
  @override
  Tab get tab => const Tab(text: 'Games');
  @override
  Widget get view => const _GamesTabView();
}

class _GamesTabView extends GetView<GamesTabController> {
  const _GamesTabView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Games TabView'),
    );
  }
}
