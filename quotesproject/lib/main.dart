import 'package:flutter/material.dart';
import 'package:quotesproject/quote.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        "The greatest glory in living lies not in never falling, but in rising every time we fall.",
        "-Nelson Mandela"),
    Quote("The way to get started is to quit talking and begin doing.",
        "-Walt Disney"),
    Quote(
        "If life were predictable it would cease to be life, and be without flavor.",
        "-Eleanor Roosevelt")
  ];

  Widget quotetemplate(quote) {
    return Card(
        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
        color: Colors.grey[900],
        child:Padding(
          padding:EdgeInsets.all(15) ,
           child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 10.0,
                letterSpacing: 1.5,
                color: Colors.amber,
              ),
            ),
            SizedBox(height: 5,),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 10.0,
                letterSpacing: 1.5,
                color: Colors.red[400],
              ),
            ),
            SizedBox(height: 8,),
            IconButton(onPressed: () {
              
            }, 
            icon:Icon(
              Icons.delete_forever_outlined,
              color: Colors.orange[700],))
          ],
        )
          )
       );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          title: Text('QuotesApp'),
          centerTitle: true,
          backgroundColor: Colors.red[700],
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: quotes
                .map((quote) => quotetemplate(quote))
                .toList(),
                
          ),
        ));
  }
}
