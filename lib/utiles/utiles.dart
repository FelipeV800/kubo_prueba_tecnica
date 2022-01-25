import 'package:flutter/material.dart';
import 'package:prueba_tecnica_kubo/LaPlaza/model/product_model.dart';

searchBar (List<Product> products, String input) {
  return products.where((element) => element.nombre?.toLowerCase().startsWith(input.toLowerCase()) == true).toList();
}