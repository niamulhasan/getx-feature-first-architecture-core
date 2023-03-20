

import 'package:flutter/cupertino.dart';

abstract class AppAppBar implements PreferredSizeWidget {
  final String title;
  final List<Widget> actions;
  const AppAppBar({Key? key, required this.title, required this.actions});
}