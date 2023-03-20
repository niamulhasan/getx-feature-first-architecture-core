import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/app_translation_keys.dart';
import '../../../settings/domain/repositories/settings.repository.dart';

class LanguageSwitchButton extends StatelessWidget {

  final SettingsRepository _settingsRepository;
  const LanguageSwitchButton(this._settingsRepository, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: Text(Get.locale == const Locale('en') ? 'EN' : Get.locale == const Locale('bn') ? 'BN' : 'EN', style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14.0, fontWeight: FontWeight.w700)),
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 'en',
          child: Text(AppTranslationKeys.english.tr,
              style: Theme.of(context).textTheme.bodyLarge),
        ),
        PopupMenuItem(
          value: 'bn',
          child: Text(AppTranslationKeys.bangla.tr,
              style: Theme.of(context).textTheme.bodyLarge),
        ),
      ],
      onSelected: (String? value) async {
        if (value != null) {
          Get.updateLocale(Locale(value));
          bool isLocaleSaved = await _settingsRepository.saveSettings(SettingName.locale, value);
          if(isLocaleSaved){
            // AppSnackbar.showSnackbar(AppTranslationKeys.localeChangedTo.tr);
            print("Locale changed to: $value");
          }
        }
      },
    );
  }
}
