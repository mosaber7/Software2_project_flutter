import 'package:flutter/material.dart';
import 'Quotes.dart';

void main() {
  runApp(MaterialApp(
    home: QuotesList(),
  ));
}

class QuotesList extends StatefulWidget {
  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quotes> q = [
    Quotes(text: 'hello motherfuckers', author: 'fucker'),
    Quotes(text: 'welcome asshole', author: 'gaylord'),
    Quotes(text: 'hello motherfuckers', author: 'fucker'),
    Quotes(text: 'welcome asshole', author: 'gaylord'),
    Quotes(text: 'hello motherfuckers', author: 'fucker'),
    Quotes(text: 'welcome asshole', author: 'gaylord'),
    Quotes(text: 'hello motherfuckers', author: 'fucker'),
    Quotes(text: 'welcome asshole', author: 'gaylord'),
  ];

  Widget quotesTimp(Quotes q) {
    return Card(
      color: Colors.green[100],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            //quotes text
            Text(
              q.text,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600]),
            ),
            SizedBox(height: 6),
            Container(
              alignment: Alignment.centerRight,
              child: Text(
                q.author,
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[550],
                    fontStyle: FontStyle.italic),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'nigaaaa!',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.blue[50]),
        ),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: q.map((qq) => quotesTimp(qq)).toList(),
        ),
      ),
    );
  }
}
