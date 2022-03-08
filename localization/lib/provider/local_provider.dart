import 'package:flutter/material.dart';
import '../l10n/l10n.dart';

class LocaleProvider extends ChangeNotifier {
  // to store the local languages store in your app
  Locale? _locale;

// getter and setter for the local 
  Locale? get locale => _locale;

  void setLocale(Locale locale) {
    if (!L10n.all.contains(locale)) return;

    _locale = locale;
    notifyListeners();
  }

  void clearLocale() {
    _locale = null;
    notifyListeners();
  }
}