import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_app/private/config/app_color.dart';

final class AppTheme {
  AppTheme._();

  static ThemeData get lightTheme => darkTheme;

  static ThemeData get darkTheme => ThemeData.from(
        textTheme: _darkTextTheme,
        colorScheme: ColorScheme.fromSeed(
          surface: AppColor.dark.surface,
          seedColor: AppColor.dark.primary,
          brightness: Brightness.dark,

          //   seedColor: barcelonaOrange,
//   primary: barcelonaOrange,
//   secondary: dreamlessBlack,
//   brightness: Brightness.light,
//   tertiary: dreamlessBlack,
        ),
      ).copyWith(
          extensions: {AppColor.dark},
          cardTheme: CardTheme(
            color: AppColor.dark.elementBackgroundPrimary,
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          progressIndicatorTheme: ProgressIndicatorThemeData(
            color: AppColor.dark.primary,
            linearTrackColor: AppColor.dark.elementBackgroundSecondary,
            borderRadius: BorderRadius.circular(16),
          ),
          chipTheme: ChipThemeData(
            backgroundColor: AppColor.dark.elementBackgroundSecondary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            side: BorderSide.none,
            labelStyle: _darkTextTheme.bodySmall,
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
          ),
          dividerTheme: DividerThemeData(
            color: AppColor.dark.onElementBackground,
          ),
          toggleButtonsTheme: ToggleButtonsThemeData(
            borderRadius: BorderRadius.circular(16),
            fillColor: AppColor.dark.accent,
            borderColor: AppColor.dark.elementBackgroundPrimary,
            splashColor: Colors.transparent,
          ),
          dialogTheme: DialogTheme(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            backgroundColor: AppColor.dark.elementBackgroundPrimary,
          ),
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: AppColor.dark.elementBackgroundSecondary,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide.none,
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: AppColor.dark.error),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: AppColor.dark.error),
            ),
            errorStyle: const TextStyle(
              fontSize: 0,
              height: 0,
              color: Colors.transparent,
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: ButtonStyle(
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              backgroundColor: WidgetStateProperty.all(
                Colors.transparent,
              ),
              foregroundColor: WidgetStateProperty.all(
                AppColor.dark.onElementBackground,
              ),
              overlayColor: WidgetStateProperty.all(
                AppColor.dark.onElementBackground.withAlpha(0x11),
              ),
            ),
          ),
          checkboxTheme: CheckboxThemeData(
            checkColor: WidgetStateProperty.all(AppColor.dark.primary),
            fillColor: WidgetStateProperty.all(
                AppColor.dark.elementBackgroundSecondary),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            side: const BorderSide(
              color: Colors.transparent,
              width: 1,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              backgroundColor: WidgetStateProperty.all(
                AppColor.dark.accent,
              ),
              foregroundColor: WidgetStateProperty.all(
                AppColor.dark.onElementBackground,
              ),
              overlayColor: WidgetStateProperty.all(
                AppColor.dark.onElementBackground.withAlpha(0x11),
              ),
            ),
          ),
          appBarTheme: AppBarTheme(
            backgroundColor: AppColor.dark.primary,
            iconTheme: IconThemeData(
              color: AppColor.dark.elementBackgroundPrimary,
            ),
          ));

  static final TextStyle _baseFont = GoogleFonts.figtree();
  // hardcoding this here because the fontFamily property returns false values (https://github.com/material-foundation/flutter-packages/issues/141#issuecomment-1236312594)
  static const String _fontFamily = 'Figtree';

  static final TextStyle w100 =
      _baseFont.copyWith(fontWeight: FontWeight.w100, fontFamily: _fontFamily);
  static final TextStyle w200 = _baseFont.copyWith(
    fontWeight: FontWeight.w200,
    fontFamily: _fontFamily,
  );
  static final TextStyle w300 = _baseFont.copyWith(
    fontWeight: FontWeight.w300,
    fontFamily: _fontFamily,
  );
  static final TextStyle w400 = _baseFont.copyWith(
    fontWeight: FontWeight.w400,
    fontFamily: _fontFamily,
  );
  static final TextStyle w500 = _baseFont.copyWith(
    fontWeight: FontWeight.w500,
    fontFamily: _fontFamily,
  );
  static final TextStyle w600 = _baseFont.copyWith(
    fontWeight: FontWeight.w600,
    fontFamily: _fontFamily,
  );
  static final TextStyle w700 = _baseFont.copyWith(
    fontWeight: FontWeight.w700,
    fontFamily: _fontFamily,
  );
  static final TextStyle w800 = _baseFont.copyWith(
    fontWeight: FontWeight.w800,
    fontFamily: _fontFamily,
  );
  static final TextStyle w900 = _baseFont.copyWith(
    fontWeight: FontWeight.w900,
    fontFamily: _fontFamily,
  );

  static final TextTheme _baseTextTheme = TextTheme(
    displayLarge: w100.copyWith(fontSize: 40, letterSpacing: 0, height: 1.12),
    displayMedium:
        w800.copyWith(fontSize: 48, letterSpacing: 0, height: 57.6 / 48),
    displaySmall:
        w800.copyWith(fontSize: 32, letterSpacing: 0, height: 38.4 / 32),
    headlineLarge:
        w700.copyWith(fontSize: 24, letterSpacing: 0, height: 30 / 24),
    headlineMedium:
        w700.copyWith(fontSize: 20, letterSpacing: 0, height: 20 / 18),
    headlineSmall:
        w700.copyWith(fontSize: 18, letterSpacing: 0, height: 24 / 18),
    titleLarge: w700.copyWith(fontSize: 18, letterSpacing: 0, height: 1.4),
    titleMedium: w800.copyWith(fontSize: 18, letterSpacing: 0, height: 1.4),
    titleSmall: w900.copyWith(fontSize: 18, letterSpacing: 0, height: 1.4),
    bodyLarge: w500.copyWith(fontSize: 16, letterSpacing: 0, height: 24 / 16),
    bodyMedium: w600.copyWith(fontSize: 20, letterSpacing: 0, height: 14 / 20),
    bodySmall: w500.copyWith(fontSize: 12, letterSpacing: 0, height: 16.8 / 12),
    labelLarge: w800.copyWith(fontSize: 12, letterSpacing: 0, height: 1.4),
    labelMedium: w600.copyWith(fontSize: 10, letterSpacing: 0, height: 1.4),
    labelSmall: w600.copyWith(fontSize: 10, letterSpacing: 0, height: 12 / 10),
  );

  // ignore: unused_field
  static final TextTheme _lightTextTheme = _baseTextTheme.apply(
    bodyColor: AppColor.light.onElementBackground,
    displayColor: AppColor.light.onSurface,
  );

  static final TextTheme _darkTextTheme = _baseTextTheme.apply(
    bodyColor: AppColor.dark.onElementBackground,
    displayColor: AppColor.dark.onSurface,
  );
}

extension TextThemeContextExtension on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
}

extension ThemeColorThemeExt on BuildContext {
  AppColor get colors => Theme.of(this).extension<AppColor>()!;
}
