
import 'package:flutter/material.dart';

class TabBarProvider {
  static final TabBarProvider _singleton = TabBarProvider._internal();
  factory TabBarProvider() {
    return _singleton;
  }

  final List<Map<Tab, Widget>> _tabs = [];

  List<Tab> get getTabBarTabs => _tabs.map((e) => e.keys.first).toList();
  List<Widget> get getTabBarViews => _tabs.map((e) => e.values.first).toList();

  set attachTabBar(Map<Tab, Widget> tab) {
    _tabs.add(tab);
  }

  TabBarProvider._internal();
}