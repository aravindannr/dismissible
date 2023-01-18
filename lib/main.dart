import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: dismis(),
    debugShowCheckedModeBanner: false,
  ));
}

class dismis extends StatelessWidget {
  var mystring = [
    "Item1",
    "Item2",
    "Item3",
    "Item4",
    "Item5",
    "Item6",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: mystring.length,
            itemBuilder: (context, index) {
              return Dismissible(
                key: ValueKey(mystring),
                child: ListTile(
                  title: Text(mystring[index]),
                ),
                background: Container(
                  color: Colors.red,
                ),
                secondaryBackground: Container(color: Colors.green),
              );
            }));
  }
}
