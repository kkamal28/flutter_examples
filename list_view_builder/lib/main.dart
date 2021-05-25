import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final myProducts = List<String>.generate(100, (i) => 'Product $i');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Builder'),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: myProducts.length,
          itemBuilder: (context, i) {
            return Card(
              color: Colors.greenAccent,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  myProducts[i],
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
