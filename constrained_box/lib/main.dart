import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Constrained Box',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Constrained Box'),
      ),
      body: Column(
        children: [
          Divider(
            height: 50,
            thickness: 5,
          ),
          ConstrainedBox(
            constraints: BoxConstraints.tightFor(height: 200, width: 200),
            child: Container(color: Colors.amber),
          ),
          Divider(
            height: 50,
            thickness: 5,
          ),
          ConstrainedBox(
            constraints: BoxConstraints.tightFor(
              height: 150,
              width: 150,
            ),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Hi'),
            ),
          ),
          Divider(
            height: 50,
            thickness: 5,
            color: Colors.yellowAccent,
            endIndent: 60,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 300, maxWidth: 300),
            child: Image.network(
                'https://www.kindacode.com/wp-content/uploads/2020/11/my-dog.jpg',
                fit: BoxFit.fill),
          )
        ],
      ),
    );
  }
}
