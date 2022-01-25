import 'package:flutter/material.dart';
import 'package:prueba_tecnica_kubo/LaPlaza/ui/widgets/cards_list.dart';

class HomeLaPlaza extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          SafeArea(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Image.asset("assets/images/logo.png"),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search_rounded),
                hintText: "Buscar",
                isDense: true,
                border: OutlineInputBorder()
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0),
            width: double.infinity,
            child: Text(
              "Todos los productos",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,

              ),
            ),
          ),
          Expanded(child: CardList())
        ],
      ),
    );
  }
}