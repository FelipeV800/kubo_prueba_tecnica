import 'package:flutter/material.dart';
import 'package:prueba_tecnica_kubo/LaPlaza/model/product_model.dart';
import 'package:prueba_tecnica_kubo/LaPlaza/ui/screens/product_details.dart';
import 'package:prueba_tecnica_kubo/LaPlaza/ui/widgets/product_card.dart';
import 'package:prueba_tecnica_kubo/services/product_service.dart';

class CardList extends StatefulWidget {
  @override
  State<CardList> createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  ProductService productService = ProductService();

  List<Data> listData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future<ProductModel> products = productService.getElements();
    products.then((value) => listData = value.data ?? []);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GridView.builder(
        itemCount: listData.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ProductDetails();
                }));
              },
              child: ProductCard(listData[index]));
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 15.0,
            crossAxisSpacing: 25.0,
            crossAxisCount: 2,
            childAspectRatio: 0.7),
        shrinkWrap: true,
      ),
    );
  }
}
