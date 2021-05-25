import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorials',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<String> _myList = List.generate(100, (index) => 'Product $index');

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Seperator in Listview using seperated'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView.separated(
          itemCount: _myList.length,
          itemBuilder: (context, index) {
            return Text(
              _myList[index],
              style: TextStyle(fontSize: 24),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              color: Theme.of(context).primaryColor,
            );
          },
        ),
      ),
    );
  }
}
