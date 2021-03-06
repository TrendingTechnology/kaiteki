import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class AppColors {
  static MaterialColor kaitekiGray = MaterialColor(
    0xFF9c9eb5,
    {
      50: const Color(0xFFf7f9ff),
      100: const Color(0xFFf2f4ff),
      200: const Color(0xFFebedff),
      300: const Color(0xFFdee0f8),
      400: const Color(0xFFbbbdd5),
      500: const Color(0xFF9c9eb5),
      600: const Color(0xFF73758b),
      700: const Color(0xFF5f6176),
      800: const Color(0xFF404256),
      900: const Color(0xFF1e2133),
    },
  );

  static MaterialColor kaitekiPink = MaterialColor(
    0xFFFF7890,
    {
      50: const Color(0xFFffe7ec),
      100: const Color(0xFFffc3cf),
      200: const Color(0xFFff9daf),
      300: const Color(0xFFff7890),
      400: const Color(0xFFfc5f78),
      500: const Color(0xFFfa4f62),
      600: const Color(0xFFe94960),
      700: const Color(0xFFd3425c),
      800: const Color(0xFFbe3b59),
      900: const Color(0xFF9a3052),
    },
  );

  static MaterialColor kaitekiOrange = MaterialColor(
    0xFFFFB16C,
    {
      50: const Color(0xFFfff2e4),
      100: const Color(0xFFffddbc),
      200: const Color(0xFFffc792),
      300: const Color(0xFFfea054),
      400: const Color(0xFFfea054),
      500: const Color(0xFFfd9044),
      600: const Color(0xFFf78642),
      700: const Color(0xFFef773f),
      800: const Color(0xFFe8683c),
      900: const Color(0xFFdc5036),
    },
  );

  // picked from https://pleroma.social/
  static Color pleromaPrimary = Color(0xFFF6A358);
  static Color pleromaSecondary = Color(0xFF11181E);

  // picked from https://joinmastodon.org/
  static Color mastodonPrimary = Color(0xFF4498DC);
  static Color mastodonSecondary = Color(0xFF1F232B);

  // picked from https://misskey.io/preferences
  static Color misskeyPrimary = Color(0xFF8DB600);
  static Color misskeySecondary = Color(0xFF000000);
}
