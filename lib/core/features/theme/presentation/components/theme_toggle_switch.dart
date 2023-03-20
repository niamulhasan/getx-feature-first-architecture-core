
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../settings/domain/repositories/settings.repository.dart';
import '../../domain/entities/app.theme.dart';
import '../../domain/entities/app.assets.dart';

class ThemeToggleSwitch extends StatelessWidget {
  final SettingsRepository _settingsRepository;
  const ThemeToggleSwitch(this._settingsRepository, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Get.changeThemeMode(
          Get.isDarkMode ? ThemeMode.light : ThemeMode.dark,
        );
        _settingsRepository.saveSettings(SettingName.theme, Get.isDarkMode ? ThemeNames.light : ThemeNames.dark);
      },
      icon: Image.asset(
        context.isDarkMode
            ? AppAssets.dark.icons.sun
            : AppAssets.light.icons.moon,
        width: 28,
      ),
    );
  }
}
