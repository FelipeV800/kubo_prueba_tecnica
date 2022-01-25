import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:prueba_tecnica_kubo/LaPlaza/ui/screens/home_la_plaza.dart';
import 'package:prueba_tecnica_kubo/LaPlaza/ui/screens/product_details.dart';
import 'package:prueba_tecnica_kubo/LaPlaza/ui/screens/product_not_found.dart';

class LaPlazaCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: HomeLaPlaza(),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.home, color: Colors.green),
              icon: Icon(Icons.home, color: Colors.grey),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.widgets_outlined, color: Colors.grey),
              label: "Categories"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket_outlined, color: Colors.grey),
              label: "Shopping"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin, color: Colors.grey),
              label: "Profile"
          ),
        ],
        selectedItemColor: Colors.green,
      ),
    );
  }
}
