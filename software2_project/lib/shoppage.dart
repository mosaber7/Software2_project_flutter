import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:software2_project/ItemScreen.dart';
import 'package:software2_project/cartpage.dart';
import 'package:software2_project/customer.dart';
import 'package:software2_project/homepage.dart';
import 'package:software2_project/product.dart';
import 'package:software2_project/search.dart';

import 'product.dart';

class Shoppage extends StatefulWidget {
  //final List<Product> myproducts;
  Customer customer;
  Shoppage({this.customer});

  @override
  _ShoppageState createState() => _ShoppageState(customer: customer);
}

class _ShoppageState extends State<Shoppage> {
  final Customer customer;
  _ShoppageState({this.customer});

  TextEditingController searchQuery_Controller = TextEditingController();
  bool _isSearching = false;

  String searchQuery = "Search query";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: build_ShopPage_AppBar(context, customer),
        body: build_ShopPage_Body());
  }

  AppBar build_ShopPage_AppBar(BuildContext context, Customer customer) {
    return AppBar(
      automaticallyImplyLeading: false,
      actions: <Widget>[
        //cart button
        IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Cartpage(customer)));
            }),
        //searching button
        IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: Search(products));
            }),
        //Home Icon Button
        IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Homepage()));
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

  Column build_ShopPage_Body() {
    return Column(
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
              itemscreen_product: products[index],
              itemscreen_onpress: () {
                setState(() {
                  customer.addItemToMyproductsList(index);
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
