import 'package:flutter/material.dart';

class CardDetails extends StatelessWidget {
  String productName = "";
  String normalPrice = "";
  String promoPrice = "";

  CardDetails(this.productName, this.normalPrice, this.promoPrice);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            productName,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 13.0,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "\$ " + normalPrice + " COP",
            style: TextStyle(
                color: Colors.red,
                fontSize: 12.0,
                decoration: TextDecoration.lineThrough
            ),
          ),
          Text(
              "\$ " + promoPrice + " COP", style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
