
import 'package:flutter/material.dart';

class AppBarProvider {
  static final AppBarProvider _singleton = AppBarProvider._internal();
  factory AppBarProvider() {
    return _singleton;
  }

  final List<Widget> _appbarActions = [];
  List<Widget> get getAppBarActions => _appbarActions;
  set attachAppbarActions(List<Widget> actions) {
    _appbarActions.addAll(actions);
  }

  AppBarProvider._internal();
}