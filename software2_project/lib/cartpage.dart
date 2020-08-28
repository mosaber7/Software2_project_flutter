import 'package:flutter/material.dart';
import 'package:software2_project/ItemScreen.dart';
import 'package:software2_project/product.dart';
import 'package:software2_project/shoppage.dart';

class Cartpage extends StatelessWidget {
  final int i;
  Cartpage(this.i);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'my cart',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey[50],
              fontSize: 20,
            ),
          ),
          centerTitle: true,
        ),
        body: Build_CartPage_body(i: i));
  }
}

class Build_CartPage_body extends StatelessWidget {
  final int i;
  Build_CartPage_body({
    Key key,
    @required this.i,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (i == -1) {
      return Column(
        children: <Widget>[
          Text('you have not added anything yet!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[50],
                fontSize: 20,
              ))
        ],
      );
    } else {
      return Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 0.75),
              itemCount: 1,
              itemBuilder: (context, index) => ItemScreen(
                p: products[i],
                onpress: null,
              ),
            ),
          ),
        ],
      );
    }
  }
}
