import 'package:flutter/material.dart';
import 'package:software2_project/productcard.dart';

class Cartpage extends StatefulWidget {
  @override
  _CartpageState createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  Productcard productcard = new Productcard();

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
      body: Column(children: [Text('hello'), productcard.getitem()]),
      backgroundColor: Colors.blue[50],
    );
  }
}
