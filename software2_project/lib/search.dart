import 'package:flutter/material.dart';
import 'package:software2_project/product.dart';

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
    /*Navigator.push(context,
        MaterialPageRoute(builder: (context) => Cartpage(customer)));
  */
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
