import 'package:flutter/material.dart';
import 'package:software2_project/product.dart';

class ItemScreen extends StatelessWidget {
  final Product p;
  final Function onpress;
  const ItemScreen({Key key, this.p, this.onpress}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            height: 180,
            width: 160,
            decoration: BoxDecoration(
                color: p.color, borderRadius: BorderRadius.circular(15)),
            child: Image.asset(p.image),
          ),
          Text(
            p.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.redAccent[200],
              fontSize: 15,
            ),
          ),
          Text(
            "\$" + p.price.toString(),
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
