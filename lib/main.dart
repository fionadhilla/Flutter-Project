import 'package:flutter/material.dart';
import './transaction.dart';
import 'package:intl/intl.dart';
// import 'package:intl/intl_browser.d art';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transaction = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't1',
      title: 'Weekly Groceries',
      amount: 16.53,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 100,
            child: Card(
              color: Colors.blue,
              child: Text('CHART!'),
              elevation: 5,
            ),
          ),
          Column(
              children: transaction.map((tx) {
            return Card(
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Rp: \$ ${tx.amount}' //+ tx.amount.toString(),
                      ,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        tx.title,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        // DateFormat
                        tx.date.toString(),
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }).toList()),
        ],
      ),
    );
  }
}
