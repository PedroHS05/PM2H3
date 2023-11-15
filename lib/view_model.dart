import 'package:flutter/foundation.dart';

class LanguageViewModel extends ChangeNotifier{

  List<String> _languages = [];

  LanguageViewModel(){
    _languages = <String>[
      "Dart",
      "C#",
      "Javascript",
      "SQL"
    ];
  }

  void addMoreLanguages() {
    _languages.add("Java");
    _languages.add("Golnag");
    _languages.add("Kotlin");
    _languages.add("Swift");

    notifyListeners();
  }


  List<String> get languages => _languages;
}