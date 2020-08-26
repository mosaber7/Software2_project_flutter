import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:software2_project/homepage.dart';

class shoppage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          children: List.generate(100, (index) {
            return products[index % 6];
          })),
      backgroundColor: Colors.blue[50],
    );
  }
}

List<Column> products = [
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      SizedBox(
        height: 16,
      ),
      Container(
        margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
        height: 180,
        width: 160,
        child: Image.asset('assets/bag_1.png'),
        decoration: BoxDecoration(
            color: Colors.blue[600], borderRadius: BorderRadius.circular(16)),
      ),
      Text('\$282'),
      ButtonTheme(
        minWidth: 150.0,
        height: 40.0,
        child: RaisedButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(10)),
          color: Colors.grey[100],
          child: Text(
            'Add to cart',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.redAccent[200],
              fontSize: 15,
            ),
          ),
        ),
      ),
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      SizedBox(
        height: 10,
      ),
      Container(
        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
        height: 180,
        width: 160,
        child: Image.asset('assets/bag_2.png'),
        decoration: BoxDecoration(
            color: Colors.brown[400], borderRadius: BorderRadius.circular(16)),
      ),
      Text('\$212'),
      ButtonTheme(
        minWidth: 150.0,
        height: 40.0,
        child: RaisedButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(10)),
          color: Colors.grey[100],
          child: Text(
            'Add to cart',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.redAccent[200],
              fontSize: 15,
            ),
          ),
        ),
      ),
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
        margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
        height: 180,
        width: 160,
        child: Image.asset('assets/bag_3.png'),
        decoration: BoxDecoration(
            color: Colors.grey[600], borderRadius: BorderRadius.circular(16)),
      ),
      Text('\$422'),
      ButtonTheme(
        minWidth: 150.0,
        height: 40.0,
        child: RaisedButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(10)),
          color: Colors.grey[100],
          child: Text(
            'Add to cart',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.redAccent[200],
              fontSize: 15,
            ),
          ),
        ),
      ),
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
        height: 180,
        width: 160,
        child: Image.asset('assets/bag_4.png'),
        decoration: BoxDecoration(
            color: Colors.brown[300], borderRadius: BorderRadius.circular(16)),
      ),
      Text('\$622'),
      ButtonTheme(
        minWidth: 150.0,
        height: 40.0,
        child: RaisedButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(10)),
          color: Colors.grey[100],
          child: Text(
            'Add to cart',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.redAccent[200],
              fontSize: 15,
            ),
          ),
        ),
      ),
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
        margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
        height: 180,
        width: 160,
        child: Image.asset('assets/bag_5.png'),
        decoration: BoxDecoration(
            color: Colors.red[500], borderRadius: BorderRadius.circular(16)),
      ),
      Text('\$262'),
      ButtonTheme(
        minWidth: 150.0,
        height: 40.0,
        child: RaisedButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(10)),
          color: Colors.grey[100],
          child: Text(
            'Add to cart',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.redAccent[200],
              fontSize: 15,
            ),
          ),
        ),
      ),
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
        margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
        height: 180,
        width: 160,
        child: Image.asset('assets/bag_6.png'),
        decoration: BoxDecoration(
            color: Colors.grey[700], borderRadius: BorderRadius.circular(16)),
      ),
      Text('\$722'),
      ButtonTheme(
        minWidth: 150.0,
        height: 40.0,
        child: RaisedButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(10)),
          color: Colors.grey[100],
          child: Text(
            'Add to cart',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.redAccent[200],
              fontSize: 15,
            ),
          ),
        ),
      ),
    ],
  ),
];

AppBar buildAppBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    actions: <Widget>[
      //cart button
      IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
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
