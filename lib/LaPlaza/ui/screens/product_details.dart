import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prueba_tecnica_kubo/LaPlaza/ui/widgets/card_product_details.dart';

class ProductDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Cilantro x 100 gr",
            style: TextStyle(
                fontSize: 17,
                color: Colors.grey
            ),
          ),
          backgroundColor: Colors.white,
          leading: IconButton(onPressed: () {Navigator.pop(context);}, icon: (Icon(Icons.arrow_back, color: Colors.grey,)),),
      ),

      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120.0, vertical: 10),
              child: Image.network("https://ecocosas.com/wp-content/uploads/2018/08/cilantro-1.jpg",
                width: double.infinity,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 7, bottom: 15),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network("https://ecocosas.com/wp-content/uploads/2018/08/cilantro-1.jpg", height: 60, width: 100,)),
            ),
            CardProductDetails()
          ],
        ),
      )
    );
  }

}