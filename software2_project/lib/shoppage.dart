import 'package:flutter/material.dart';
import 'package:software2_project/cartpage.dart';
import 'package:software2_project/homepage.dart';
import 'package:software2_project/productcard.dart';

class Shoppage extends StatefulWidget {
  @override
  _ShoppageState createState() => _ShoppageState();
}

class _ShoppageState extends State<Shoppage> {
  Productcard productcard = new Productcard();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          children: List.generate(100, (index) {
            return productcard.product[index % 6];
          })),
      backgroundColor: Colors.blue[50],
    );
  }
}

List<Column> items;

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    actions: <Widget>[
      //cart button
      IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Cartpage(items)));
          }),
      //searching button
      IconButton(icon: Icon(Icons.search), onPressed: () {}),
      IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            Homepage();
          })
    ],
    backgroundColor: Colors.redAccent[200],
    title: Text(
      'Shoping',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.grey[50],
        fontSize: 20,
      ),
    ),
    centerTitle: true,
  );
}
