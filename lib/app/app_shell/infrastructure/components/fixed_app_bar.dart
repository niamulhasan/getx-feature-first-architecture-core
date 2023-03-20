
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../domain/entities/app_app_bar.dart';

class FixedAppAppBar extends StatelessWidget implements AppAppBar {

  @override
  final String title;

  @override
  final List<Widget> actions;


  const FixedAppAppBar({Key? key, required this.title, required this.actions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title.tr),
      centerTitle: true,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
