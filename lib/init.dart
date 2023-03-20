
import 'app/app_shell/infrastructure/tabs.binding.dart';
import 'app/games_tab/infrastructure/games_tab.binding.dart';
import 'app/home_tab/infrastructure/home_tab.binding.dart';
import 'app/profile_tab/infrastructure/profile_tab.binding.dart';
import 'core/features/translation/translations.binding.dart';
import 'core/navigation/navigation.dart';
import 'core/features/settings/infrastructure/settings.binding.dart';
import 'core/features/theme/infrastructure/theme.binding.dart';

Future<void> init() async {
  await Features.attach(TabsBindings());
  await Features.attach(SettingsBindings());
  await Features.attach(ThemeBindings());
  await Features.attach(TranslationsBindings());
  await Features.attach(HomeTabBindings());
  await Features.attach(ProfileTabBindings());
  await Features.attach(GamesTabBindings());
}
