import 'package:plural/plural.dart';

class PluralL implements Plural {
  @override
  bool aceita(String singular) {
    return singular.endsWith("al")||
           singular.endsWith("el")||
           singular.endsWith("ol")||
           singular.endsWith("ul");
  }

  @override
  String doPlural(String singular) {
    return "${singular.substring(0, singular.length - 1)}is";
  }

}