// main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Kindacode.com',
      theme: ThemeData(primaryColor: Colors.green),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  // List data
  final List<String> _myList = List.generate(100, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adding Top Border to Item Widget'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: _myList.length,
          // The list items
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: index == 0
                    ? Border() // This will create no border for the first item
                    : Border(
                        top: BorderSide(
                            width: 1,
                            color: Theme.of(context)
                                .primaryColor)), // This will create top borders for the rest
              ),
              child: Text(
                _myList[index],
                style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),
              ),
            );
          },
        ),
      ),
    );
  }
}