import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorials',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final _myList = List.generate(100, (index) => 'Item \#$index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adding Scrollbar'),
      ),
      body: Scrollbar(
        
        thickness: 10,
        isAlwaysShown: true,
        radius: Radius.circular(20),
        child: ListView.builder(
          itemCount: _myList.length,
          itemBuilder: (context, index) => Card(
            key: ValueKey(_myList[index]),
            margin: EdgeInsets.all(10),
            elevation: 10,
            color: Colors.accents[Random().nextInt(Colors.accents.length)],
            child: ListTile(
              title: Text(
                _myList[index],
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
