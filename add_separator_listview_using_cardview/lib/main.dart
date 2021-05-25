import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorials',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blueAccent),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> _people = List.generate(100,
      (index) => {'name': 'Person \#$index', 'age': Random().nextInt(100) + 1});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add Seperator using CardView'),
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: ListView.builder(
              itemCount: _people.length,
              itemBuilder: (context, index) {
                return Card(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    color: Colors.amberAccent,
                    child: ListTile(
                      title: Text(
                        _people[index]['name'],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      trailing: Text(
                        _people[index]['age'].toString(),
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ));
              }),
        ));
  }
}
