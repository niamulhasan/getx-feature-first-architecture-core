
import 'package:flutter/material.dart';

abstract class ThemeRepository {
  ThemeData get getLightTheme;
  ThemeData? get getDarkTheme;
}