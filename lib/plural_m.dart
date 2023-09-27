import 'package:plural/plural.dart';

class PluralM implements Plural {
  @override
  bool aceita(String singular) {
    return singular.endsWith("m");
  }

  @override
  String doPlural(String singular) {
    return "${singular.substring(0, singular.length - 1)}ns";
  }

}