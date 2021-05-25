import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List _peopleData = List.generate(100, (index) {
    return {"name": "Person $index", "age": Random().nextInt(90) + 10};
  });

  Widget _listItem(index) {
    return Container(
      padding: EdgeInsets.all(10),
      child: ListTile(
        leading: Text(
          index.toString(),
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        title: Text(
          _peopleData[index]['name'].toString(),
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        trailing: Text(
          _peopleData[index]['age'].toString(),
          style: TextStyle(
              fontSize: 18, color: Colors.purple, fontWeight: FontWeight.bold),
        ),
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: Colors.teal),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adding Header ListView Unfixed'),
      ),
      body: ListView.builder(
        itemBuilder: (_, index) {
          if (index == 0) {
            return Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.amber,
                  child: ListTile(
                    leading: Text('ID'),
                    title: Text('Name'),
                    trailing: Text('Age'),
                  ),
                ),
                _listItem(index)
              ],
            );
          }
          return _listItem(index);
        },
      ),
    );
  }
}
