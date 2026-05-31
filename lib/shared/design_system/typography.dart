import 'package:flutter/material.dart';

class AppTypography {
  AppTypography._();

  static const String arabicFontFamily = 'Uthmanic';
  static const String uiFontFamily = 'Inter';

  static TextStyle arabicDisplay(BuildContext context, {double? fontSize}) {
    return TextStyle(
      fontFamily: arabicFontFamily,
      fontSize: fontSize ?? 28,
      height: 1.8,
      color: Theme.of(context).colorScheme.onSurface,
    );
  }

  static TextStyle arabicBody(BuildContext context, {double? fontSize}) {
    return TextStyle(
      fontFamily: arabicFontFamily,
      fontSize: fontSize ?? 22,
      height: 1.8,
      color: Theme.of(context).colorScheme.onSurface,
    );
  }

  static TextStyle translationBody(BuildContext context, {double? fontSize}) {
    return TextStyle(
      fontFamily: uiFontFamily,
      fontSize: fontSize ?? 16,
      height: 1.5,
      color: Theme.of(context).colorScheme.onSurfaceVariant,
    );
  }

  static TextStyle transliterationBody(BuildContext context, {double? fontSize}) {
    return TextStyle(
      fontFamily: uiFontFamily,
      fontSize: fontSize ?? 14,
      fontStyle: FontStyle.italic,
      height: 1.4,
      color: Theme.of(context).colorScheme.outline,
    );
  }
}
