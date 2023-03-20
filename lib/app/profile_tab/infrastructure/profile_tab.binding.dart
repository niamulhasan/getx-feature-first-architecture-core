import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/bindings/interfaces/feature_bindings.dart';
import '../presentation/controllers/profile_tab.controller.dart';
import '../presentation/profile.tab.dart';


class ProfileTabBindings extends FeatureBinding implements BindingsTabBarAttachable {

  @override
  Future<void> bind() async {
    Get.lazyPut<ProfileTabController>(() => ProfileTabController());
  }

  @override
  Tab tab = const ProfileTab().tab;

  @override
  Widget view = const ProfileTab().view;
}
