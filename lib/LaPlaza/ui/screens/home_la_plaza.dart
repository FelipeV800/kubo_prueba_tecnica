import 'package:flutter/material.dart';
import 'package:prueba_tecnica_kubo/LaPlaza/model/product_model.dart';
import 'package:prueba_tecnica_kubo/LaPlaza/ui/screens/product_details.dart';
import 'package:prueba_tecnica_kubo/LaPlaza/ui/widgets/cards_list.dart';
import 'package:prueba_tecnica_kubo/LaPlaza/ui/widgets/product_card.dart';
import 'package:prueba_tecnica_kubo/la_plaza_cupertino.dart';
import 'package:prueba_tecnica_kubo/services/product_service.dart';
import 'package:prueba_tecnica_kubo/utiles/utiles.dart';

class HomeLaPlaza extends StatefulWidget{

  @override
  State<HomeLaPlaza> createState() => _HomeLaPlazaState();
}

class _HomeLaPlazaState extends State<HomeLaPlaza> {
  TextEditingController controller = TextEditingController();

  ProductService productService = ProductService();

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
              onSubmitted: (value){
                setState(() {

                });
              },
              controller: controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                    icon: Icon(Icons.search_rounded), onPressed: () {setState(() {

                    });},
                ),
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
          Expanded(child: FutureBuilder<ProductModel>(
            future: productService.getElements(),
            builder: (BuildContext context, snapshot) {
              if(snapshot.hasData){
                List<Product> filter = searchBar(snapshot.data?.product??[], controller.text);
                return _createBodySucceful(filter);
              } else if (snapshot.hasError){
                return Container(
                  child: Text("hay un error"),
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ))
        ],
      ),
    );
  }

  _createBodySucceful (List<Product> snapshot) {
    if (snapshot.isNotEmpty) {
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: GridView.builder(
            itemCount: snapshot.length??0,
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return ProductDetails(snapshot?[index]??Product());
                    }));
                  },
                  child: ProductCard(snapshot?[index]??Product()));
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 15.0,
                crossAxisSpacing: 25.0,
                crossAxisCount: 2,
                childAspectRatio: 0.7),
            shrinkWrap: true,
          ),
        ),
      );
    } else {
      return SingleChildScrollView(
        child: Container(
          color: Color(0xeeeef0),
          alignment: Alignment.center,
          child: Container(
            height: 300,
            width: 300,
            color: Colors.white,
            child: Column(
              children: [
                Image.network("https://thumbs.dreamstime.com/b/el-hombre-est%C3%A1-pensando-signo-de-interrogaci%C3%B3n-como-ondulaci%C3%B3n-del-agua-car%C3%A1cter-ejemplo-la-historieta-vector-concepto-asunto-135229881.jpg", height: 200, width: 200,),
                Text("Esto esta muy vacio", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),),
                Text("Por el momento no tenemos informacion que mostrar", textAlign: TextAlign.center, style: TextStyle(fontSize: 13),)
              ],
            ),
          ),
        ),
      );
    }
  }
}

