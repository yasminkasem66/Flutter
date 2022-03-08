import 'dart:ui';

class L10n {
  static final all = [
    const Locale('en'),
    const Locale('ar'),
    const Locale('hi'),
    const Locale('es'),
    const Locale('de'),
  ];

   static String getFlag(String code) {
    switch (code) {
      case 'ar':
        return '🇦🇪';
      case 'hi':
        return '🇮🇳';
      case 'es':
        return '🇪🇸';
      case 'de':
        return '🇩🇪';
      case 'en':
      default:
        return '🇺🇸';
    }
  }
   static String getLangName(String code) {
    switch (code) {
      case 'ar':
        return 'Arabic';
      case 'hi':
        return 'Hindi';
      case 'es':
        return 'Espanish';
      case 'de':
        return 'German';
      case 'en':
      default:
        return 'English';
    }
  }
}
