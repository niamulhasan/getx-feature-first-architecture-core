
import 'package:flutter/material.dart';

import '../../domain/entities/app.theme.dart';
import '../../domain/entities/repositories/theme_repository.dart';

class DraculaThemeRepository implements ThemeRepository {

  @override
  ThemeData? get getDarkTheme => AppTheme.dark;

  @override
  ThemeData get getLightTheme => AppTheme.light;

}