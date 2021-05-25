import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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

class HomePage extends StatelessWidget {
  final List data = List.generate(100, (index) => '$index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cupertino Scrollbar'),
      ),
      body: CupertinoScrollbar(
        thickness: 8,
        isAlwaysShown: true,
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) => Card(
            color: Colors.blue[200],
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Center(
                child: Text(
                  data[index],
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
