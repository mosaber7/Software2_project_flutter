import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class shoppage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(0),
            ),
            Container(
              height: 180,
              width: 140,
              child: Image.asset(
                'assets/pexels-bùi-huy-1750045.jpg',
              ),
              decoration: BoxDecoration(
                  color: Colors.pink[200],
                  borderRadius: BorderRadius.circular(16)),
            ),
            Text("sneeker"),
            Text('\$222'),
            Container(
              height: 180,
              width: 140,
              child: Image.asset(
                'assets/pexels-melvin-buezo-2529148.jpg',
              ),
              decoration: BoxDecoration(
                  color: Colors.pink[200],
                  borderRadius: BorderRadius.circular(16)),
            ),
            Text("sneeker"),
            Text('\$222'),
            Container(
              height: 180,
              width: 140,
              child: Image.asset(
                'assets/pexels-jordan-hyde-1032110.jpg',
              ),
              decoration: BoxDecoration(
                  color: Colors.pink[200],
                  borderRadius: BorderRadius.circular(16)),
            ),
            Text("sneeker"),
            Text('\$222'),
          ],
        ),
      ),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    automaticallyImplyLeading: false,
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
