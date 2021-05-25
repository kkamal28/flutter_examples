import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Circular Buttons 2',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circular Buttons 2'),
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(120),
            child: SizedBox(
              height: 200,
              width: 200,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.camera,
                  size: 30,
                ),
                label: Text(
                  'Camera',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
          ),
          Divider(
            thickness: 2,
            color: Colors.teal,
          ),
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 200,
                  width: 200,
                  child: RaisedButton(
                    color: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Text(
                      'Raised Button',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
