import 'package:get/get.dart';

import '../../../constants/app_translation_keys.dart';



class AppTranslationModel {
  final String key;
  final String bn;
  final String en;

  const AppTranslationModel({
    required this.key,
    required this.bn,
    required this.en,
  });
}

abstract class AppTranslationData {
  static List<AppTranslationModel> data = [
    const AppTranslationModel(
      key: AppTranslationKeys.appName,
      en: 'Nagorik Gemes',
      bn: 'নাগরিক গেমেস',
    ),
    const AppTranslationModel(
      key: AppTranslationKeys.translation,
      en: 'Translation',
      bn: 'অনুবাদ',
    ),
    const AppTranslationModel(
      key: AppTranslationKeys.language,
      en: 'Language',
      bn: 'ভাষা',
    ),
    const AppTranslationModel(
      key: AppTranslationKeys.english,
      en: 'English',
      bn: 'ইংরেজি',
    ),
    const AppTranslationModel(
      key: AppTranslationKeys.bangla,
      en: 'Bangla',
      bn: 'বাংলা',
    ),
  ];
}

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys {

    Map<String, String> english = {};
    Map<String, String> bangla = {};

    for (var element in AppTranslationData.data) {
      english[element.key] = element.en;
      bangla[element.key] = element.bn;
    }

    return {
      'en': english,
      'bn': bangla,
    };
  }
}
