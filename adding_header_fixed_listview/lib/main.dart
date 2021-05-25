import 'dart:ui';

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
    return {"name": "Person \#$index", "age": Random().nextInt(90) + 10};
  });

  Widget _listItem(index) {
    return Container(
      padding: EdgeInsets.all(10),
      child: ListTile(
        leading: Text(
          index.toString(),
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        title: Text(
          _peopleData[index]['name'].toString(),
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        trailing: Text(
          _peopleData[index]['age'].toString(),
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.purple),
        ),
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 2, color: Colors.tealAccent),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adding Fixed Header ListView'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.amberAccent,
            child: ListTile(
              leading: Text('ID',style:TextStyle(fontWeight:FontWeight.bold,fontSize:20) ,),
              title: Text('Name',style:TextStyle(fontWeight:FontWeight.bold,fontSize:20) ,),
              trailing: Text('age',style:TextStyle(fontWeight:FontWeight.bold,fontSize:20) ,),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: _peopleData.length,
                  itemBuilder: (_, index) {
                    return _listItem(index);
                  }))
        ],
      ),
    );
  }
}
