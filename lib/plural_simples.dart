import 'package:plural/plural.dart';

class PluralSimples implements Plural{
  @override
  String doPlural(String singular) {
    return "${singular}s";
  }
  
  @override
  bool aceita(String singular) {
    return true;
  }

}