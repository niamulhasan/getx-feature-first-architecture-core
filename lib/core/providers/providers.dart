
import 'providers/app_bar_provider.dart';
import 'providers/tab_bar/tab_bar_provider.dart';

abstract class Providers {
  static final AppBarProvider appBarProvider = AppBarProvider();
  static final TabBarProvider tabBarProvider = TabBarProvider();
}

