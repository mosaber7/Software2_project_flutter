import 'package:flutter/material.dart';
import 'package:software2_project/ItemScreen.dart';
import 'package:software2_project/product.dart';
import 'package:software2_project/shoppage.dart';

import 'product.dart';

class Cartpage extends StatelessWidget {
  List<Product> myprducts;
  Cartpage(this.myprducts);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent[200],
          title: Text(
            'MYCART',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey[70],
              fontSize: 20,
            ),
          ),
          centerTitle: true,
        ),
        body: Build_CartPage_body(
          myprducts: myprducts,
        ));
  }
}

class Build_CartPage_body extends StatefulWidget {
  List<Product> myprducts;
  Build_CartPage_body({
    Key key,
    @required this.myprducts,
  }) : super(key: key);

  @override
  _Build_CartPage_bodyState createState() =>
      _Build_CartPage_bodyState(myprducts);
}

class _Build_CartPage_bodyState extends State<Build_CartPage_body> {
  List<Product> myprducts;
  _Build_CartPage_bodyState({this.myprducts});
  @override
  Widget build(BuildContext context) {
    if (widget.myprducts.isEmpty) {
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
              itemCount: widget.myprducts.length,
              itemBuilder: (context, index) => ItemScreen(
                p: widget.myprducts[index],
                onpress: () {
                  setState(() {
                    myprducts.removeAt(index);
                  });
                },
              ),
            ),
          ),
          Text(getprice(widget.myprducts).toString())
        ],
      );
    }
  }

  int getprice(List<Product> l) {
    int sum = 0;
    for (Product product in l) {
      sum += product.price;
    }
    return sum;
  }
}
