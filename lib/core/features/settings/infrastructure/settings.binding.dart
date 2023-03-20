import 'package:get/get.dart';
import 'repositories/shared_preference_settings_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../bindings/interfaces/feature_bindings.dart';

import '../domain/repositories/settings.repository.dart';

class SettingsBindings extends FeatureBinding {

  @override
  Future<void> bind() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Get.lazyPut<SettingsRepository>(
        () => SharedPreferenceSettingsRepository(sharedPreferences),
        fenix: true);
  }
}
