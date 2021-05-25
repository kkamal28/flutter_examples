import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('elavated Button'),
      ),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('Click me'),
            ),
            Divider(
              thickness: 2,
              color: Colors.teal,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.plus_one),
              label: Text('Plus One'),
            ),
            Divider(
              thickness: 2,
              color: Colors.teal,
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('Disabled Button'),
            ),
            Divider(
              thickness: 2,
              color: Colors.teal,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Button'),
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
                padding: EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 20,
                ),
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(
              thickness: 2,
              color: Colors.teal,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Button1'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
                padding: MaterialStateProperty.all(
                  EdgeInsets.all(30),
                ),
                textStyle: MaterialStateProperty.all(
                  TextStyle(fontSize: 20),
                ),
              ),
            ),
            Divider(
              thickness: 2,
              color: Colors.teal,
            ),
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(
                width: 150,
                height: 150,
              ),
              child: ElevatedButton(
                child: Text(
                  '200 * 200',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
              ),
            ),
            Divider(
              thickness: 2,
              color: Colors.teal,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 15,
                ),
                textStyle: TextStyle(
                  fontSize: 30,
                ),
              ),
              onPressed: () {
                print('Button Clicked');
              },
              child: Text('I am a Button'),
            ),
          ],
        ),
      ),
    );
  }
}
