import 'package:flutter/material.dart';

class Productcard {
  Productcard() {}
  static Column myitem;
  void addtomycart(int i) {
    myitem = product[i];
  }

  Column getitem() {
    return myitem;
  }

  Column getproduct(int index) {
    return product[index];
  }

  List<Column> product = [
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
              color: Colors.brown[400],
              borderRadius: BorderRadius.circular(16)),
        ),
        Text('\$212'),
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
              color: Colors.brown[300],
              borderRadius: BorderRadius.circular(16)),
        ),
        Text('\$622'),
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
      ],
    ),
  ];
}
