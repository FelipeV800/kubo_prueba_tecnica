import 'package:flutter/material.dart';

class CardProductDetails extends StatelessWidget {
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
                  Text("Cilantro x 100 gr", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Spacer(),
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined))
                ],
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            child: Text("Cilantro seleccionado, recien cosechado, totalmente limpio."),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text("Presentacion: Paquete por 100 gramos."),
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text("1,750.00 COP", style: TextStyle(color: Colors.red, decoration: TextDecoration.lineThrough))),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text("1,400.00 COP", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 21),)),
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
                  )
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