import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:google_fonts/google_fonts.dart';

@immutable
class AppTheme {
  const AppTheme._();

  static final light = FlexThemeData.light(
    // colorScheme: const ColorScheme(
    //   brightness: Brightness.light,
    //   primary: Color(0xffcd5758),
    //   onPrimary: Color(0xffffffff),
    //   primaryContainer: Color(0xffe49797),
    //   onPrimaryContainer: Color(0xff130d0d),
    //   secondary: Color(0xff69b9cd),
    //   onSecondary: Color(0xff000000),
    //   secondaryContainer: Color(0xffa6edff),
    //   onSecondaryContainer: Color(0xff0e1414),
    //   tertiary: Color(0xff57c8d3),
    //   onTertiary: Color(0xff000000),
    //   tertiaryContainer: Color(0xff90f2fc),
    //   onTertiaryContainer: Color(0xff0c1414),
    //   error: Color(0xff790000),
    //   onError: Color(0xffffffff),
    //   errorContainer: Color(0xfff1d8d8),
    //   onErrorContainer: Color(0xff141212),
    //   background: Color(0xfffdfafa),
    //   onBackground: Color(0xff090909),
    //   surface: Color(0xfffdfafa),
    //   onSurface: Color(0xff090909),
    //   surfaceVariant: Color(0xffece5e5),
    //   onSurfaceVariant: Color(0xff121111),
    //   outline: Color(0xff7c7c7c),
    //   outlineVariant: Color(0xffc8c8c8),
    //   shadow: Color(0xff000000),
    //   scrim: Color(0xff000000),
    //   inverseSurface: Color(0xff161212),
    //   onInverseSurface: Color(0xfff5f5f5),
    //   inversePrimary: Color(0xfffff0f0),
    //   surfaceTint: Color(0xffcd5758),
    // ),
    swapLegacyOnMaterial3: true,
    useMaterial3: true,
    scheme: FlexScheme.indigoM3,
    surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
    blendLevel: 7,
    appBarStyle: FlexAppBarStyle.primary,
    appBarOpacity: 0.95,
    appBarElevation: 0,
    transparentStatusBar: true,
    tabBarStyle: FlexTabBarStyle.forBackground,
    tooltipsMatchBackground: true,
    swapColors: true,
    lightIsWhite: true,
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    fontFamily: GoogleFonts.dekko().fontFamily,
    subThemesData: const FlexSubThemesData(
      useM2StyleDividerInM3: true,
      useTextTheme: true,
      fabUseShape: true,
      interactionEffects: true,
      bottomNavigationBarElevation: 0,
      bottomNavigationBarOpacity: 1,
      navigationBarOpacity: 1,
      navigationBarMutedUnselectedIcon: true,
      inputDecoratorIsFilled: true,
      inputDecoratorBorderType: FlexInputBorderType.outline,
      inputDecoratorFocusedHasBorder: true,
      blendOnColors: true,
      blendTextTheme: true,
      popupMenuOpacity: 0.95,
      //elevatedButtonSchemeColor: SchemeColor.onPrimaryContainer,
    ),
  );

  static final dark = FlexThemeData.dark(
    // colorScheme: const ColorScheme(
    //   brightness: Brightness.dark,
    //   primary: Color(0xffda8585),
    //   onPrimary: Color(0xfffff9f9),
    //   primaryContainer: Color(0xffc05253),
    //   onPrimaryContainer: Color(0xfffdecec),
    //   secondary: Color(0xff85c6d6),
    //   onSecondary: Color(0xff0e1314),
    //   secondaryContainer: Color(0xff21859e),
    //   onSecondaryContainer: Color(0xffe4f4f8),
    //   tertiary: Color(0xff68cdd7),
    //   onTertiary: Color(0xff0c1414),
    //   tertiaryContainer: Color(0xff037481),
    //   onTertiaryContainer: Color(0xffe0f1f4),
    //   error: Color(0xffcf6679),
    //   onError: Color(0xff140c0d),
    //   errorContainer: Color(0xffb1384e),
    //   onErrorContainer: Color(0xfffbe8ec),
    //   background: Color(0xff1b1616),
    //   onBackground: Color(0xffedecec),
    //   surface: Color(0xff1b1616),
    //   onSurface: Color(0xffedecec),
    //   surfaceVariant: Color(0xff433a3a),
    //   onSurfaceVariant: Color(0xffe1e0e0),
    //   outline: Color(0xff7d7676),
    //   outlineVariant: Color(0xff2e2c2c),
    //   shadow: Color(0xff000000),
    //   scrim: Color(0xff000000),
    //   inverseSurface: Color(0xfffdf8f8),
    //   onInverseSurface: Color(0xff131313),
    //   inversePrimary: Color(0xff6c4747),
    //   surfaceTint: Color(0xffda8585),
    // ),
    swapLegacyOnMaterial3: true,
    useMaterial3: true,
    scheme: FlexScheme.indigoM3,
    surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
    blendLevel: 7,
    appBarStyle: FlexAppBarStyle.primary,
    appBarOpacity: 0.95,
    appBarElevation: 0,
    transparentStatusBar: true,
    tabBarStyle: FlexTabBarStyle.forBackground,
    tooltipsMatchBackground: true,
    swapColors: true,
    darkIsTrueBlack: true,
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    fontFamily: GoogleFonts.dekko().fontFamily,
    subThemesData: const FlexSubThemesData(
      useM2StyleDividerInM3: true,
      useTextTheme: true,
      fabUseShape: true,
      interactionEffects: true,
      bottomNavigationBarElevation: 0,
      bottomNavigationBarOpacity: 1,
      navigationBarOpacity: 1,
      navigationBarMutedUnselectedIcon: true,
      inputDecoratorIsFilled: true,
      inputDecoratorBorderType: FlexInputBorderType.outline,
      inputDecoratorFocusedHasBorder: true,
      blendOnColors: true,
      blendTextTheme: true,
      popupMenuOpacity: 0.95,
      //elevatedButtonSchemeColor: SchemeColor.onPrimaryContainer,
    ),
  );
}
