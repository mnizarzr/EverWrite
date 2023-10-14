import 'package:everwrite/ui/colors.dart';
import 'package:everwrite/ui/typography/typography.dart';
import 'package:flutter/material.dart';

const _smallTextScaleFactor = 0.80;
const _largeTextScaleFactor = 1.20;

/// Namespace for the App [ThemeData].
class AppTheme {
  /// Standard `ThemeData` for App UI.
  static ThemeData get standard {
    return ThemeData(
      useMaterial3: true,
      appBarTheme: _appBarTheme,
      elevatedButtonTheme: _elevatedButtonTheme,
      outlinedButtonTheme: _outlinedButtonTheme,
      textTheme: _textTheme,
      dialogBackgroundColor: AppColors.whiteBackground,
      dialogTheme: _dialogTheme,
      tooltipTheme: _tooltipTheme,
      bottomSheetTheme: _bottomSheetTheme,
      tabBarTheme: _tabBarTheme,
      dividerTheme: _dividerTheme,
      colorScheme: ColorScheme.fromSwatch(accentColor: AppColors.primary)
          .copyWith(background: AppColors.whiteBackground),
    );
  }

  /// `ThemeData` for App UI for small screens.
  static ThemeData get small {
    return standard.copyWith(textTheme: _smallTextTheme);
  }

  /// `ThemeData` for App UI for medium screens.
  static ThemeData get medium {
    return standard.copyWith(textTheme: _smallTextTheme);
  }

  /// `ThemeData` for App UI for large screens.
  static ThemeData get large {
    return standard.copyWith(textTheme: _largeTextTheme);
  }

  static TextTheme get _textTheme {
    return TextTheme(
      displayLarge: AppTextStyle.displayLarge,
      displayMedium: AppTextStyle.displayMedium,
      displaySmall: AppTextStyle.displaySmall,
      headlineMedium: AppTextStyle.headlineMedium,
      headlineSmall: AppTextStyle.headlineSmall,
      titleLarge: AppTextStyle.titleLarge,
      titleMedium: AppTextStyle.titleMedium,
      titleSmall: AppTextStyle.titleSmall,
      bodyLarge: AppTextStyle.bodyLarge,
      bodyMedium: AppTextStyle.bodyMedium,
      bodySmall: AppTextStyle.bodySmall,
      labelSmall: AppTextStyle.labelSmall,
      labelLarge: AppTextStyle.labelLarge,
    );
  }

  static TextTheme get _smallTextTheme {
    return TextTheme(
      displayLarge: AppTextStyle.displayLarge.copyWith(
        fontSize: _textTheme.displayLarge!.fontSize! * _smallTextScaleFactor,
      ),
      displayMedium: AppTextStyle.displayMedium.copyWith(
        fontSize: _textTheme.displayMedium!.fontSize! * _smallTextScaleFactor,
      ),
      displaySmall: AppTextStyle.displaySmall.copyWith(
        fontSize: _textTheme.displaySmall!.fontSize! * _smallTextScaleFactor,
      ),
      headlineMedium: AppTextStyle.headlineMedium.copyWith(
        fontSize: _textTheme.headlineMedium!.fontSize! * _smallTextScaleFactor,
      ),
      headlineSmall: AppTextStyle.headlineSmall.copyWith(
        fontSize: _textTheme.headlineSmall!.fontSize! * _smallTextScaleFactor,
      ),
      titleLarge: AppTextStyle.titleLarge.copyWith(
        fontSize: _textTheme.titleLarge!.fontSize! * _smallTextScaleFactor,
      ),
      titleMedium: AppTextStyle.titleMedium.copyWith(
        fontSize: _textTheme.titleMedium!.fontSize! * _smallTextScaleFactor,
      ),
      titleSmall: AppTextStyle.titleSmall.copyWith(
        fontSize: _textTheme.titleSmall!.fontSize! * _smallTextScaleFactor,
      ),
      bodyLarge: AppTextStyle.bodyLarge.copyWith(
        fontSize: _textTheme.bodyLarge!.fontSize! * _smallTextScaleFactor,
      ),
      bodyMedium: AppTextStyle.bodyMedium.copyWith(
        fontSize: _textTheme.bodyMedium!.fontSize! * _smallTextScaleFactor,
      ),
      bodySmall: AppTextStyle.bodySmall.copyWith(
        fontSize: _textTheme.bodySmall!.fontSize! * _smallTextScaleFactor,
      ),
      labelSmall: AppTextStyle.labelSmall.copyWith(
        fontSize: _textTheme.labelSmall!.fontSize! * _smallTextScaleFactor,
      ),
      labelLarge: AppTextStyle.labelLarge.copyWith(
        fontSize: _textTheme.labelLarge!.fontSize! * _smallTextScaleFactor,
      ),
    );
  }

  static TextTheme get _largeTextTheme {
    return TextTheme(
      displayLarge: AppTextStyle.displayLarge.copyWith(
        fontSize: _textTheme.displayLarge!.fontSize! * _largeTextScaleFactor,
      ),
      displayMedium: AppTextStyle.displayMedium.copyWith(
        fontSize: _textTheme.displayMedium!.fontSize! * _largeTextScaleFactor,
      ),
      displaySmall: AppTextStyle.displaySmall.copyWith(
        fontSize: _textTheme.displaySmall!.fontSize! * _largeTextScaleFactor,
      ),
      headlineMedium: AppTextStyle.headlineMedium.copyWith(
        fontSize: _textTheme.headlineMedium!.fontSize! * _largeTextScaleFactor,
      ),
      headlineSmall: AppTextStyle.headlineSmall.copyWith(
        fontSize: _textTheme.headlineSmall!.fontSize! * _largeTextScaleFactor,
      ),
      titleLarge: AppTextStyle.titleLarge.copyWith(
        fontSize: _textTheme.titleLarge!.fontSize! * _largeTextScaleFactor,
      ),
      titleMedium: AppTextStyle.titleMedium.copyWith(
        fontSize: _textTheme.titleMedium!.fontSize! * _largeTextScaleFactor,
      ),
      titleSmall: AppTextStyle.titleSmall.copyWith(
        fontSize: _textTheme.titleSmall!.fontSize! * _largeTextScaleFactor,
      ),
      bodyLarge: AppTextStyle.bodyLarge.copyWith(
        fontSize: _textTheme.bodyLarge!.fontSize! * _largeTextScaleFactor,
      ),
      bodyMedium: AppTextStyle.bodyMedium.copyWith(
        fontSize: _textTheme.bodyMedium!.fontSize! * _largeTextScaleFactor,
      ),
      bodySmall: AppTextStyle.bodySmall.copyWith(
        fontSize: _textTheme.bodySmall!.fontSize! * _largeTextScaleFactor,
      ),
      labelSmall: AppTextStyle.labelSmall.copyWith(
        fontSize: _textTheme.labelSmall!.fontSize! * _largeTextScaleFactor,
      ),
      labelLarge: AppTextStyle.labelLarge.copyWith(
        fontSize: _textTheme.labelLarge!.fontSize! * _largeTextScaleFactor,
      ),
    );
  }

  static AppBarTheme get _appBarTheme {
    return const AppBarTheme(color: AppColors.primary);
  }

  static ElevatedButtonThemeData get _elevatedButtonTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: AppColors.primary,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        fixedSize: const Size(208, 54),
      ),
    );
  }

  static OutlinedButtonThemeData get _outlinedButtonTheme {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        side: const BorderSide(color: AppColors.white, width: 2),
        fixedSize: const Size(208, 54),
      ),
    );
  }

  static TooltipThemeData get _tooltipTheme {
    return const TooltipThemeData(
      decoration: BoxDecoration(
        color: AppColors.gray,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      padding: EdgeInsets.all(10),
      textStyle: TextStyle(color: AppColors.white),
    );
  }

  static DialogTheme get _dialogTheme {
    return DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  static BottomSheetThemeData get _bottomSheetTheme {
    return const BottomSheetThemeData(
      backgroundColor: AppColors.whiteBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
      ),
    );
  }

  static TabBarTheme get _tabBarTheme {
    return const TabBarTheme(
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          width: 2,
          color: AppColors.primary,
        ),
      ),
      labelColor: AppColors.primary,
      unselectedLabelColor: AppColors.gray,
      indicatorSize: TabBarIndicatorSize.tab,
    );
  }

  static DividerThemeData get _dividerTheme {
    return const DividerThemeData(
      space: 0,
      thickness: 1,
      color: AppColors.gray,
    );
  }
}
