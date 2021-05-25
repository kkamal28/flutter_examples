import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Circular Buttons',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circular Buttons'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: 150, height: 150),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Buttons',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                ),
              ),
            ),

            Divider(
              color: Colors.amber,
              thickness: 2,
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                primary: Colors.red,
              ),
              onPressed: () {},
              child: Container(
                width: 150,
                height: 150,
                alignment: Alignment.center,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Text(
                  'I am a Button',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),

            Divider(
              color: Colors.amber,
              thickness: 2,
            ),

            MaterialButton(
              color: Colors.blue,
              shape: CircleBorder(),
              onPressed: () {},
              child: Padding(
                  padding: EdgeInsets.all(100),
                  child: Text(
                    'Material Button',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),

          ],
        ),
      ),
    );
  }
}
