// Define your seed colors.

import 'package:flex_seed_scheme/flex_seed_scheme.dart';
import 'package:flutter/material.dart';

const Color primarySeedColor = Color(0xFF83a6ff);
// const Color secondarySeedColor = Color(0xFF84468d);
// const Color tertiarySeedColor = Color(0xFF3871BB);

// Make a dark ColorScheme from the seeds.
final ColorScheme schemeDark = SeedColorScheme.fromSeeds(
  brightness: Brightness.dark,
  primaryKey: primarySeedColor,
  // secondaryKey: secondarySeedColor,
  // tertiaryKey: tertiarySeedColor,
  tones: FlexTones.vivid(Brightness.dark),
);
