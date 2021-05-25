import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter tutorial',
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
        title: Text(
          'Horizontal gridView ScrollDirection',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
          child: SizedBox(
            width: double.infinity,
            height: 300,
            child: GridView(
              scrollDirection: Axis.horizontal,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 250,
                  childAspectRatio: 1 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
                children: [
                  Container(
                    color: Colors.cyanAccent,
                    alignment: Alignment.center,
                    child: Text('1',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    color: Colors.cyanAccent,
                    alignment: Alignment.center,
                    child: Text(
                      '2',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    color: Colors.cyanAccent,
                    alignment: Alignment.center,
                    child: Text(
                      '3',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    color: Colors.cyanAccent,
                    alignment: Alignment.center,
                    child: Text(
                      '4',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    color: Colors.cyanAccent,
                    alignment: Alignment.center,
                    child: Text(
                      '5',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    color: Colors.cyanAccent,
                    alignment: Alignment.center,
                    child: Text(
                      '6',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    color: Colors.cyanAccent,
                    alignment: Alignment.center,
                    child: Text(
                      '7',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    color: Colors.cyanAccent,
                    alignment: Alignment.center,
                    child: Text(
                      '8',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    color: Colors.cyanAccent,
                    alignment: Alignment.center,
                    child: Text(
                      '9',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    color: Colors.cyanAccent,
                    alignment: Alignment.center,
                    child: Text(
                      '10',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    color: Colors.cyanAccent,
                    alignment: Alignment.center,
                    child: Text(
                      '11',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    color: Colors.cyanAccent,
                    alignment: Alignment.center,
                    child: Text(
                      '12',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  )
          ],
        ),
      )),
    );
  }
}
