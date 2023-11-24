import 'package:flutter/foundation.dart';
import 'package:loja/product.dart';
import 'package:loja/product_repository.dart';

//ChangeNotifier permite conexões e avisa todos que estiverem conectados a ele quando houver modificações dentro do proprio

class CatalogViewModel extends ChangeNotifier{
  late List<Product> products;

  CatalogViewModel() {
    products = ProductRepository.list();
  }
}