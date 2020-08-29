import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:software2_project/ItemScreen.dart';
import 'package:software2_project/cartpage.dart';
import 'package:software2_project/homepage.dart';
import 'package:software2_project/product.dart';

import 'product.dart';
import 'product.dart';
import 'product.dart';

class Shoppage extends StatefulWidget {
  @override
  _ShoppageState createState() => _ShoppageState();
}

class _ShoppageState extends State<Shoppage> {
  TextEditingController _searchQueryController = TextEditingController();
  bool _isSearching = false;
  String searchQuery = "Search query";
  List<Product> myproducts = [];
  void addItemToList(int index) {
    setState(() {
      myproducts.add(products[index]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context, myproducts), body: build_ShopPage_Body());
  }

  Column build_ShopPage_Body() {
    return Column(
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
                addItemToList(index);
              },
            ),
          ),
        ),
      ],
    );
  }
}

AppBar buildAppBar(BuildContext context, List<Product> myproducts) {
  return AppBar(
    automaticallyImplyLeading: false,
    actions: <Widget>[
      //cart button
      IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Cartpage(myproducts)));
          }),
      //searching button
      IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            showSearch(context: context, delegate: Search(products));
          }),
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

class Search extends SearchDelegate {
  Search(this.list);
  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildResults(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => Cartpage(search_list)));
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  List<Product> search_list = [];
  final List<Product> list;
  List<Product> recentList = [products[0], products[1]];
  @override
  Widget buildSuggestions(BuildContext context) {
    List<Product> suggestionList = [];
    query.isEmpty
        ? suggestionList = recentList //In the true case
        : suggestionList.addAll(list.where(
            // In the false case
            (element) => element.title.contains(query),
          ));
    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            suggestionList[index].title,
          ),
          leading: query.isEmpty ? Icon(Icons.access_time) : SizedBox(),
          onTap: () {
            showResults(context);
          },
        );
      },
    );
  }
}
