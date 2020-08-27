import 'package:flutter/material.dart';
import 'package:software2_project/cartpage.dart';
import 'package:software2_project/homepage.dart';
import 'package:software2_project/product.dart';

class Shoppage extends StatefulWidget {
  @override
  _ShoppageState createState() => _ShoppageState();
}

class _ShoppageState extends State<Shoppage> {
  List<Product> myproducts;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context),
        body: Column(
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
                  p: products[index],
                  onpress: () {
                    myproducts.add(products[index]);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Cartpage(index)));
                  },
                ),
              ),
            ),
          ],
        ));
  }
}

class ItemScreen extends StatelessWidget {
  final Product p;
  final Function onpress;
  const ItemScreen({Key key, this.p, this.onpress}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            height: 180,
            width: 160,
            decoration: BoxDecoration(
                color: p.color, borderRadius: BorderRadius.circular(15)),
            child: Image.asset(p.image),
          ),
          Text(
            products[0].title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.redAccent[200],
              fontSize: 15,
            ),
          ),
          Text(
            "\$" + p.price.toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.redAccent[200],
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    actions: <Widget>[
      //cart button
      IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Cartpage()));
          }),
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
