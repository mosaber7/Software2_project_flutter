import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class shoppage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(0),
          ),
        ],
      ),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    actions: <Widget>[
      //cart button
      IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
      //searching button
      IconButton(icon: Icon(Icons.search), onPressed: () {}),
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
