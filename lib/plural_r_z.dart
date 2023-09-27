import 'package:plural/plural.dart';

class PluralRZ implements Plural{
  @override
  bool aceita(String singular) {
    return singular.endsWith("z") || singular.endsWith("r");;
  }

  @override
  String doPlural(String singular) {
    return "${singular}es";
  }

}