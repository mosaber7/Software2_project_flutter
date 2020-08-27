import 'package:flutter/material.dart';

class Cartpage extends StatelessWidget {
  List<Column> items;
  Cartpage(List items) {
    this.items = items;
  }
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
      body: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          children: List.generate(items.length, (index) {
            return items[index];
          })),
      backgroundColor: Colors.blue[50],
    );
  }
}
