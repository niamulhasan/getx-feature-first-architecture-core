

import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class FeatureBinding {
  Future<void> bind();
}

abstract class BindingsAppBarActionAttachable {
  List<Widget> appbarActions = [];
}

abstract class BindingsPageRouteAttachable {
  List<GetPage> pageRoutes = [];
}

abstract class BindingsTabBarAttachable {
  late Tab tab;
  late Widget view;
}