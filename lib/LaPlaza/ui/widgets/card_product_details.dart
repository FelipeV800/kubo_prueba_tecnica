import 'package:flutter/material.dart';
import 'package:prueba_tecnica_kubo/LaPlaza/model/product_model.dart';

class CardProductDetails extends StatelessWidget {

  Product product;

  CardProductDetails(this.product);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Card(
        elevation: 10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Flexible(child: Text(product.nombre??"", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)), flex: 2),
                  Spacer(),
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined))
                ],
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            child: Text(product.descripcion??""),
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text("\$ ${product.precio} COP", style: TextStyle(color: Colors.red, decoration: TextDecoration.lineThrough))),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text("\$ ${product.precio} COP", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 21),)),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 11),
              height: 45,
              child: Card(
                elevation: 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down, color: Colors.grey,)),
                    Text("0"),
                    IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_up, color: Colors.grey,))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 85, vertical: 5),
              child: ElevatedButton(
                  onPressed: (){},
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Icon(Icons.shopping_basket_outlined),
                      ),
                      Text("Añadir al carrito"),
                    ],
                  ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: Row(children: [
                Text("Descripcion", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                Spacer(),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_downward))
              ],),
            )
          ],
        ),
      ),
    );
  }

}