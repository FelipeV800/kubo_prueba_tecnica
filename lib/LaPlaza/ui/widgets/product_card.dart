import 'package:flutter/material.dart';
import 'package:prueba_tecnica_kubo/LaPlaza/model/product_model.dart';
import 'package:prueba_tecnica_kubo/LaPlaza/ui/widgets/card_details.dart';

class ProductCard extends StatelessWidget {

  ProductCard(this.product);

  Data product;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      margin: EdgeInsets.zero,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12,right: 15),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(product.imagen??"",
                  width: double.infinity,
                  height: 150,
                  fit: BoxFit.cover,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: CardDetails(product.nombre??"", product.precio??"", product.precio??""),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.favorite_border_outlined)
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.shopping_basket_outlined),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
