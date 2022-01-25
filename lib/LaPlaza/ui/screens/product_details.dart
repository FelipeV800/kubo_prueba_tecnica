import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prueba_tecnica_kubo/LaPlaza/model/product_model.dart';
import 'package:prueba_tecnica_kubo/LaPlaza/ui/widgets/card_product_details.dart';

class ProductDetails extends StatelessWidget {

  Product product;
  ProductDetails(this.product);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text(
            product.nombre??"",
            style: TextStyle(
                fontSize: 17,
                color: Colors.grey
            ),
          ),
          backgroundColor: Colors.white,
          leading: IconButton(onPressed: () {Navigator.pop(context);}, icon: (Icon(Icons.arrow_back, color: Colors.grey,)),),
      ),

      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 120.0, vertical: 10),
                child: Image.network(product.imagen??"",
                  width: double.infinity,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7, bottom: 15),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(product.imagen??"", height: 80, width: 80,)),
              ),
              CardProductDetails(product)
            ],
          ),
        ),
      )
    );
  }

}