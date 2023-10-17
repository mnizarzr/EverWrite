import 'package:everwrite/ui/colors.dart';
import 'package:everwrite/ui/typography/typography.dart';
import 'package:flutter/widgets.dart';

/// App Text Style Definitions
class AppTextStyle {
  static const TextStyle _baseTextStyle = TextStyle(
    fontFamily: 'Inter',
    color: AppColors.dark,
    fontWeight: AppFontWeight.regular,
  );

  /// Display Large Text Style
  static TextStyle get displayLarge {
    return _baseTextStyle.copyWith(
      fontSize: 56,
      fontWeight: AppFontWeight.medium,
    );
  }

  /// Display Medium Text Style
  static TextStyle get displayMedium {
    return _baseTextStyle.copyWith(
      fontSize: 30,
      fontWeight: AppFontWeight.regular,
    );
  }

  /// Display Small Text Style
  static TextStyle get displaySmall {
    return _baseTextStyle.copyWith(
      fontSize: 28,
      fontWeight: AppFontWeight.regular,
    );
  }

  /// Headline Medium Text Style
  static TextStyle get headlineMedium {
    return _baseTextStyle.copyWith(
      fontSize: 22,
      fontWeight: AppFontWeight.bold,
    );
  }

  /// Headline Small Text Style
  static TextStyle get headlineSmall {
    return _baseTextStyle.copyWith(
      fontSize: 20,
      fontWeight: AppFontWeight.medium,
    );
  }

  /// Title Large Text Style
  static TextStyle get titleLarge {
    return _baseTextStyle.copyWith(
      fontSize: 22,
      fontWeight: AppFontWeight.bold,
    );
  }

  /// titleMedium Text Style
  static TextStyle get titleMedium {
    return _baseTextStyle.copyWith(
      fontSize: 16,
      fontWeight: AppFontWeight.bold,
    );
  }

  /// titleSmall Text Style
  static TextStyle get titleSmall {
    return _baseTextStyle.copyWith(
      fontSize: 14,
      fontWeight: AppFontWeight.bold,
    );
  }

  /// bodyLarge Text Style
  static TextStyle get bodyLarge {
    return _baseTextStyle.copyWith(
      fontSize: 18,
      fontWeight: AppFontWeight.medium,
    );
  }

  /// bodyMedium Text Style (the default)
  static TextStyle get bodyMedium {
    return _baseTextStyle.copyWith(
      fontSize: 16,
      fontWeight: AppFontWeight.regular,
    );
  }

  /// bodySmall Text Style
  static TextStyle get bodySmall {
    return _baseTextStyle.copyWith(
      fontSize: 14,
      fontWeight: AppFontWeight.regular,
    );
  }

  /// labelSmall Text Style
  static TextStyle get labelSmall {
    return _baseTextStyle.copyWith(
      fontSize: 16,
      fontWeight: AppFontWeight.regular,
    );
  }

  /// labelLarge Text Style
  static TextStyle get labelLarge {
    return _baseTextStyle.copyWith(
      fontSize: 18,
      fontWeight: AppFontWeight.medium,
    );
  }
}
