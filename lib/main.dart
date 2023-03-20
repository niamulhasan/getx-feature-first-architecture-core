import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'core/features/settings/domain/repositories/settings.repository.dart';
import 'core/features/theme/domain/entities/app.theme.dart';
import 'core/features/theme/domain/entities/repositories/theme_repository.dart';
import 'core/features/translation/domain/repositories/app_translations_repository.dart';
import 'core/utils/repository_locator.dart';
import 'init.dart';

import 'core/navigation/navigation.dart';
import 'core/navigation/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  var initialRoute = await Routes.initialRoute;

  runApp(Main(
    initialRoute,
    Get.find(),
    RepositoryLocator.locate(),
    RepositoryLocator.locate(),

  ));
}

class Main extends StatelessWidget {
  final String initialRoute;
  final SettingsRepository _settingsRepository;
  final ThemeRepository? _themeRepository;
  final AppTranslationsRepository? _appTranslationsRepository;

  const Main(
      this.initialRoute, this._settingsRepository, this._themeRepository, this._appTranslationsRepository);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: initialRoute,
      getPages: Nav.routes(),
      theme: _themeRepository?.getLightTheme,
      darkTheme: _themeRepository?.getDarkTheme,
      themeMode: _settingsRepository.getSettings(SettingName.theme) == null
          ? ThemeMode.system
          : _settingsRepository.getSettings(SettingName.theme) ==
                  ThemeNames.dark
              ? ThemeMode.dark
              : ThemeMode.light,
      translations: _appTranslationsRepository?.getTranslations,
      locale: _settingsRepository.getSettings(SettingName.locale) ==
          null
          ? Get.deviceLocale
          : Locale(
          _settingsRepository.getSettings(SettingName.locale)!),
      // locale: const Locale('bn', 'BD'),
      fallbackLocale: const Locale('en', 'US'),
    );
  }
}
