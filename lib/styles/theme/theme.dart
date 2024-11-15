// ignore_for_file: use_full_hex_values_for_flutter_colors

import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4285027470),
      surfaceTint: Color(4285027470),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4293647871),
      onPrimaryContainer: Color(4280487750),
      secondary: Color(4284701552),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4293517048),
      onSecondaryContainer: Color(4280227883),
      tertiary: Color(4286468701),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4294957537),
      onTertiaryContainer: Color(4281405467),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294899711),
      onSurface: Color(4280097568),
      onSurfaceVariant: Color(4282991950),
      outline: Color(4286215551),
      outlineVariant: Color(4291544271),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281478965),
      inversePrimary: Color(4292066557),
      primaryFixed: Color(4293647871),
      onPrimaryFixed: Color(4280487750),
      primaryFixedDim: Color(4292066557),
      onPrimaryFixedVariant: Color(4283383156),
      secondaryFixed: Color(4293517048),
      onSecondaryFixed: Color(4280227883),
      secondaryFixedDim: Color(4291674843),
      onSecondaryFixedVariant: Color(4283122520),
      tertiaryFixed: Color(4294957537),
      onTertiaryFixed: Color(4281405467),
      tertiaryFixedDim: Color(4293965765),
      onTertiaryFixedVariant: Color(4284758854),
      surfaceDim: Color(4292794592),
      surfaceBright: Color(4294899711),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294504954),
      surfaceContainer: Color(4294110452),
      surfaceContainerHigh: Color(4293781230),
      surfaceContainerHighest: Color(4293386472),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4283119984),
      surfaceTint: Color(4285027470),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4286540453),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4282859348),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4286148999),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4284430146),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4288112500),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294899711),
      onSurface: Color(4280097568),
      onSurfaceVariant: Color(4282728778),
      outline: Color(4284636519),
      outlineVariant: Color(4286478723),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281478965),
      inversePrimary: Color(4292066557),
      primaryFixed: Color(4286540453),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4284830347),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4286148999),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4284504174),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4288112500),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4286336859),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292794592),
      surfaceBright: Color(4294899711),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294504954),
      surfaceContainer: Color(4294110452),
      surfaceContainerHigh: Color(4293781230),
      surfaceContainerHighest: Color(4293386472),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4280948301),
      surfaceTint: Color(4285027470),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4283119984),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4280622898),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4282859348),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4281931554),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4284430146),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294899711),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280689195),
      outline: Color(4282728778),
      outlineVariant: Color(4282728778),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281478965),
      inversePrimary: Color(4294174975),
      primaryFixed: Color(4283119984),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4281672280),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4282859348),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4281346365),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4284430146),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4282786092),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292794592),
      surfaceBright: Color(4294899711),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294504954),
      surfaceContainer: Color(4294110452),
      surfaceContainerHigh: Color(4293781230),
      surfaceContainerHighest: Color(4293386472),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4292066557),
      surfaceTint: Color(4292066557),
      onPrimary: Color(4281869916),
      primaryContainer: Color(4283383156),
      onPrimaryContainer: Color(4293647871),
      secondary: Color(4291674843),
      onSecondary: Color(4281609536),
      secondaryContainer: Color(4283122520),
      onSecondaryContainer: Color(4293517048),
      tertiary: Color(4293965765),
      onTertiary: Color(4283049264),
      tertiaryContainer: Color(4284758854),
      onTertiaryContainer: Color(4294957537),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279570968),
      onSurface: Color(4293386472),
      onSurfaceVariant: Color(4291544271),
      outline: Color(4287926169),
      outlineVariant: Color(4282991950),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293386472),
      inversePrimary: Color(4285027470),
      primaryFixed: Color(4293647871),
      onPrimaryFixed: Color(4280487750),
      primaryFixedDim: Color(4292066557),
      onPrimaryFixedVariant: Color(4283383156),
      secondaryFixed: Color(4293517048),
      onSecondaryFixed: Color(4280227883),
      secondaryFixedDim: Color(4291674843),
      onSecondaryFixedVariant: Color(4283122520),
      tertiaryFixed: Color(4294957537),
      onTertiaryFixed: Color(4281405467),
      tertiaryFixedDim: Color(4293965765),
      onTertiaryFixedVariant: Color(4284758854),
      surfaceDim: Color(4279570968),
      surfaceBright: Color(4282071102),
      surfaceContainerLowest: Color(4279176467),
      surfaceContainerLow: Color(4280097568),
      surfaceContainer: Color(4280360740),
      surfaceContainerHigh: Color(4281084207),
      surfaceContainerHighest: Color(4281742394),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4292329727),
      surfaceTint: Color(4292066557),
      onPrimary: Color(4280092736),
      primaryContainer: Color(4288382660),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4291938015),
      onSecondary: Color(4279833381),
      secondaryContainer: Color(4288056740),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294294729),
      onTertiary: Color(4281010966),
      tertiaryContainer: Color(4290151312),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279570968),
      onSurface: Color(4294965759),
      onSurfaceVariant: Color(4291807443),
      outline: Color(4289175979),
      outlineVariant: Color(4287005067),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293386472),
      inversePrimary: Color(4283514485),
      primaryFixed: Color(4293647871),
      onPrimaryFixed: Color(4279763515),
      primaryFixedDim: Color(4292066557),
      onPrimaryFixedVariant: Color(4282264674),
      secondaryFixed: Color(4293517048),
      onSecondaryFixed: Color(4279504416),
      secondaryFixedDim: Color(4291674843),
      onSecondaryFixedVariant: Color(4282004294),
      tertiaryFixed: Color(4294957537),
      onTertiaryFixed: Color(4280616465),
      tertiaryFixedDim: Color(4293965765),
      onTertiaryFixedVariant: Color(4283509302),
      surfaceDim: Color(4279570968),
      surfaceBright: Color(4282071102),
      surfaceContainerLowest: Color(4279176467),
      surfaceContainerLow: Color(4280097568),
      surfaceContainer: Color(4280360740),
      surfaceContainerHigh: Color(4281084207),
      surfaceContainerHighest: Color(4281742394),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294965759),
      surfaceTint: Color(4292066557),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4292329727),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294965759),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4291938015),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294965753),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4294294729),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279570968),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294965759),
      outline: Color(4291807443),
      outlineVariant: Color(4291807443),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293386472),
      inversePrimary: Color(4281474901),
      primaryFixed: Color(4293845759),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4292329727),
      onPrimaryFixedVariant: Color(4280092736),
      secondaryFixed: Color(4293845756),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4291938015),
      onSecondaryFixedVariant: Color(4279833381),
      tertiaryFixed: Color(4294959077),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4294294729),
      onTertiaryFixedVariant: Color(4281010966),
      surfaceDim: Color(4279570968),
      surfaceBright: Color(4282071102),
      surfaceContainerLowest: Color(4279176467),
      surfaceContainerLow: Color(4280097568),
      surfaceContainer: Color(4280360740),
      surfaceContainerHigh: Color(4281084207),
      surfaceContainerHighest: Color(4281742394),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
