import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../bindings/interfaces/feature_bindings.dart';
import 'domain/repositories/app_translations_repository.dart';
import 'infrastructure/repositories/bangla_english_translation_repository.dart';
import 'presentation/components/language_switch_button.dart';


class TranslationsBindings extends FeatureBinding implements BindingsAppBarActionAttachable {

  @override
  Future<void> bind() async {
    Get.lazyPut<AppTranslationsRepository>(() => BanglaEnglishTranslationRepository());
  }


  //TODO: think about Get.find() here
  @override
  List<Widget> appbarActions = [LanguageSwitchButton(Get.find())];
}
