import 'package:flutter/material.dart';
import 'package:software2_project/customer.dart';
import 'package:software2_project/product.dart';

class Bill extends StatelessWidget {
  Customer customer;
  List<Product> products;
  Bill({this.customer, this.products});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        children: [
          Text(customer.username),
          GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 0.75),
              itemCount: products.length,
              itemBuilder: (context, index) {
                Text(products[index].title);
                Text(products[index].price.toString());
              })
        ],
      ),
    );
  }

  AppBar buildAppBar() {
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
