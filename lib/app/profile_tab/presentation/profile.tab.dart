import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/providers/providers/tab_bar/app_tab_view.dart';
import 'controllers/profile_tab.controller.dart';



class ProfileTab implements AppTabView {
  const ProfileTab();
  @override
  Tab get tab => const Tab(text: 'Profile');
  @override
  Widget get view => const _ProfileTabView();
}

class _ProfileTabView extends GetView<ProfileTabController> {
  const _ProfileTabView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('ProfileTabView'),
    );
  }

}
