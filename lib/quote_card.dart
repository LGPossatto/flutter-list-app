import 'package:flutter/material.dart';
import 'Quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function deleteQuote;
  QuoteCard({required this.quote, required this.deleteQuote});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  quote.text,
                  style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  quote.author,
                  style: TextStyle(fontSize: 14, color: Colors.grey[800]),
                ),
                SizedBox(
                  height: 8,
                ),
                TextButton.icon(
                    onPressed: () {
                      deleteQuote(quote);
                    },
                    icon: Icon(Icons.delete),
                    label: Text('Delete Quote')),
              ])),
    );
  }
}
