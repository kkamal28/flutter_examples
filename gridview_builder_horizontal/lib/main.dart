import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorial',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List dummyData = List.generate(100, (index) => '$index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horizontal GridView Builder'),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: 300,
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            itemCount:dummyData.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 250,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemBuilder: (context, index) {
              return GridTile(
                  child: Container(
                      color: Colors.blue[200],
                      alignment: Alignment.center,
                      child: Text(dummyData[index]),
              ));
            }),
      )),
    );
  }
}
