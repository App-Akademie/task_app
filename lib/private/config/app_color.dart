import 'package:flutter/material.dart';
import 'package:task_app/private/config/palette.dart';

class AppColor extends ThemeExtension<AppColor> {
  final Color primary;
  final Color secondary;
  final Color accent;
  final Color error;

  final Color surface;
  final Color elementBackgroundPrimary;
  final Color elementBackgroundSecondary;

  final Color onSurface;
  final Color onElementBackground;

  final Color radiusBorder;

  const AppColor({
    required this.primary,
    required this.secondary,
    required this.accent,
    required this.surface,
    required this.elementBackgroundPrimary,
    required this.elementBackgroundSecondary,
    required this.onSurface,
    required this.onElementBackground,
    required this.radiusBorder,
    required this.error,
  });

  // no light theme yet
  static AppColor get light => const AppColor(
        primary: Palette.barcelonaOrange,
        secondary: Palette.underwaterBlue,
        accent: Palette.labelBackdrop,
        elementBackgroundPrimary: Palette.blackOut300,
        elementBackgroundSecondary: Palette.blackOut200,
        surface: Palette.bgWhite,
        onElementBackground: Palette.textBlack,
        onSurface: Palette.textBlack,
        radiusBorder: Palette.blackOut300,
        error: Palette.errorRed,
      );

  static AppColor get dark => const AppColor(
        primary: Palette.barcelonaOrange,
        secondary: Palette.underwaterBlue,
        accent: Palette.labelBackdrop,
        elementBackgroundPrimary: Palette.blackOut700,
        elementBackgroundSecondary: Palette.blackOut500,
        surface: Palette.bgGrey,
        onElementBackground: Palette.textWhite,
        onSurface: Palette.textWhite,
        radiusBorder: Palette.blackOut300,
        error: Palette.errorRed,
      );

  @override
  ThemeExtension<AppColor> copyWith({
    Color? primary,
    Color? secondary,
    Color? accent,
    Color? surface,
    Color? textBody,
  }) =>
      this;
  // AppColor(
  //   primary: primary ?? this.primary,
  //   secondary: secondary ?? this.secondary,
  //   accent: accent ?? this.accent,
  //   surface: surface ?? this.surface,
  //   textBody: textBody ?? this.textBody,

  // );

  @override
  ThemeExtension<AppColor> lerp(
      covariant ThemeExtension<AppColor>? other, double t) {
    if (other is! AppColor) return this;
    return this;
    // return AppColor(
    //   primary: Color.lerp(primary, other.primary, t)!,
    //   secondary: Color.lerp(secondary, other.secondary, t)!,
    //   accent: Color.lerp(accent, other.accent, t)!,
    //   surface: Color.lerp(surface, other.surface, t)!,
    //   textBody: Color.lerp(textBody, other.textBody, t)!,
    // );
  }
}
