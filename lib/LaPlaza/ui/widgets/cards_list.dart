import 'package:flutter/material.dart';
import 'package:prueba_tecnica_kubo/LaPlaza/model/product_model.dart';
import 'package:prueba_tecnica_kubo/LaPlaza/ui/screens/product_details.dart';
import 'package:prueba_tecnica_kubo/LaPlaza/ui/widgets/product_card.dart';
import 'package:prueba_tecnica_kubo/services/product_service.dart';

class CardList extends StatelessWidget {

  Function search;
  ProductService productService = ProductService();

  CardList(this.search, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FutureBuilder<ProductModel>(
      future: productService.getElements(),
      builder: (BuildContext context, snapshot) {
        if(snapshot.hasData){
          return _createBodySucceful(snapshot);
        } else if (snapshot.hasError){
          return Container(
            child: Text("hay un error"),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

_createBodySucceful (AsyncSnapshot<ProductModel> snapshot) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: GridView.builder(
      itemCount: snapshot.data?.product?.length??0,
      itemBuilder: (context, index) {
        return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ProductDetails(snapshot.data?.product?[index]??Product());
              }));
            },
            child: ProductCard(snapshot.data?.product?[index]??Product()));
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
