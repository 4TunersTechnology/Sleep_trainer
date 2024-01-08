import 'package:flutter/material.dart';

class AppLocale extends ChangeNotifier {
  Locale _locale = Locale('en', 'US');

  Locale get locale => _locale;

  void changeLocale(String languageCode) {
    _locale = Locale(languageCode);
    notifyListeners();
  }
}
