import 'package:flutter/material.dart';
import 'package:software2_project/ItemScreen.dart';
import 'package:software2_project/customer.dart';
import 'package:software2_project/product.dart';
import 'package:software2_project/shoppage.dart';

import 'product.dart';

class Cartpage extends StatelessWidget {
  //my card list of items
  Customer customer;
//constructor to get the list of items from the previous page
  Cartpage(this.customer);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: build_CartPage_AppBar(),
        body: Build_CartPage_body(
          customer: customer,
        ));
  }

  AppBar build_CartPage_AppBar() {
    return AppBar(
      backgroundColor: Colors.redAccent[200],
      title: Text(
        'MYCART',
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

class Build_CartPage_body extends StatefulWidget {
  Customer customer;
  Build_CartPage_body({
    Key key,
    @required this.customer,
  }) : super(key: key);

  @override
  _Build_CartPage_bodyState createState() => _Build_CartPage_bodyState();
}

class _Build_CartPage_bodyState extends State<Build_CartPage_body> {
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
            itemCount: widget.customer.products_List.length,
            itemBuilder: (context, index) => ItemScreen(
              itemscreen_product: widget.customer.products_List[index],
              itemscreen_onpress: () {
                setState(() {
                  widget.customer.products_List.removeAt(index);
                });
              },
            ),
          ),
        ),
        Container(
          width: 330,
          padding: EdgeInsets.fromLTRB(15, 0, 15, 15),
          child: RaisedButton(
            onPressed: () {
              //bot working*******
              setState(() {
                widget.customer.products_List.clear();
              });
            },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Text(
              'Purchase all    ' +
                  '\$' +
                  getprice(widget.customer.products_List).toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.redAccent[200],
                fontSize: 20,
              ),
            ),
          ),
        ),
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
