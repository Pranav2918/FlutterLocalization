import 'package:flutter/cupertino.dart';

class LanguageChangeProvider with ChangeNotifier {
  Locale currentLocale = const Locale("en");

  void changeLocale(String locale) {
    currentLocale = Locale(locale);
    notifyListeners();
  }
}
