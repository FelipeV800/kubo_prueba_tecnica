import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:prueba_tecnica_kubo/LaPlaza/model/product_model.dart';

class ProductService {
  Future <ProductModel> getElements() async {
    try {
      var url = Uri.parse('https://api.bazzaio.com/v5/listados/listar_productos_tienda/590/0/');
      var response = await http.get(url);
      var jsonMapa = jsonDecode(response.body);
      ProductModel productModel = ProductModel.fromJson(jsonMapa);
      return productModel;
    } catch (e) {
      print(e);
      return ProductModel();
    }
  }
}

