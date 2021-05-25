import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Tutorials',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _products =
      List.generate(100, (index) => "Products${index.toString()}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ReOrderable ListView'),
      ),
      body: ReorderableListView.builder(
        itemCount: _products.length,
        itemBuilder: (context, index) {
          final String productName = _products[index];
          return Card(
            key: ValueKey(productName),
            color: Colors.amber,
            elevation: 1,
            margin: EdgeInsets.all(10),
            child: ListTile(
              contentPadding: EdgeInsets.all(25),
              title: Text(
                productName,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.drag_handle),
            ),
          );
        },
        onReorder: (oldIndex, newIndex) {
          setState(
            () {
              if (newIndex > oldIndex) {
                newIndex = newIndex - 1;
              }
              final element = _products.removeAt(oldIndex);
              _products.insert(newIndex, element);
            },
          );
        },
      ),
    );
  }
}
