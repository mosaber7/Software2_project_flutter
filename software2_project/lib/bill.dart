import 'package:flutter/material.dart';
import 'package:software2_project/ItemScreen.dart';
import 'package:software2_project/bill.dart';
import 'package:software2_project/customer.dart';
import 'package:software2_project/product.dart';

import 'product.dart';

class Bill extends StatelessWidget {
  //my card list of items
  List<Product> products;
//constructor to get the list of items from the previous page
  Bill(this.products);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: build_BILL_AppBar(),
        body: Build_Bill_body(
          products: products,
        ));
  }

  AppBar build_BILL_AppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.redAccent[200],
      title: Text(
        ' MYBILL',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.grey[70],
          fontSize: 20,
        ),
      ),
      centerTitle: true,
    );
  }
}

class Build_Bill_body extends StatefulWidget {
  List<Product> products;
  Build_Bill_body({
    Key key,
    @required this.products,
  }) : super(key: key);

  @override
  _Build_Bill_bodyState createState() => _Build_Bill_bodyState();
}

class _Build_Bill_bodyState extends State<Build_Bill_body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.75),
            itemCount: products.length,
            itemBuilder: (context, index) => ItemScreen(
              itemscreen_product: products[index],
            ),
          ),
        ),
        Container(
            width: 330,
            padding: EdgeInsets.fromLTRB(15, 0, 15, 15),
            child: Text(
              '\$' + getprice(products).toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.redAccent[200],
                fontSize: 20,
              ),
            )),
        Text(
          DateTime.now().toString(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey[70],
            fontSize: 20,
          ),
        )
      ],
    );
  }

  int getprice(List<Product> l) {
    int sum = 0;
    for (Product product in l) {
      sum += product.price;
    }
    return sum;
  }
}
