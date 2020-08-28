import 'package:flutter/material.dart';
import 'package:software2_project/ItemScreen.dart';
import 'package:software2_project/cartpage.dart';
import 'package:software2_project/homepage.dart';
import 'package:software2_project/product.dart';

class Shoppage extends StatefulWidget {
  @override
  _ShoppageState createState() => _ShoppageState();
}

class _ShoppageState extends State<Shoppage> {
  List<Product> myproducts;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context),
        body: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 0.75),
                itemBuilder: (context, index) => ItemScreen(
                  p: products[index],
                  onpress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Cartpage(index)));
                  },
                ),
              ),
            ),
          ],
        ));
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    actions: <Widget>[
      //cart button
      IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {
            /*Navigator.push(
                context, MaterialPageRoute(builder: (context) => Cartpage()));*/
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
