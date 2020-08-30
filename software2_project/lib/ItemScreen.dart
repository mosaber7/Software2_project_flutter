import 'package:flutter/material.dart';
import 'package:software2_project/product.dart';

class ItemScreen extends StatelessWidget {
  final Product itemscreen_product;
  final Function itemscreen_onpress;
  const ItemScreen({Key key, this.itemscreen_product, this.itemscreen_onpress})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: itemscreen_onpress,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            height: 180,
            width: 160,
            decoration: BoxDecoration(
                color: itemscreen_product.color,
                borderRadius: BorderRadius.circular(15)),
            child: Image.asset(itemscreen_product.image),
          ),
          Text(
            itemscreen_product.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.redAccent[200],
              fontSize: 15,
            ),
          ),
          Text(
            "\$" + itemscreen_product.price.toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.redAccent[200],
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
