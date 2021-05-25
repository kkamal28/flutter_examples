import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter tutorial',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        scrollbarTheme: ScrollbarThemeData(
            isAlwaysShown: true,
            thickness: MaterialStateProperty.all(10),
            thumbColor: MaterialStateProperty.all(Colors.red),
            radius: Radius.circular(10),
            minThumbLength: 100),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List data = List.generate(100, (index) => '$index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scrollbar using ScrollBar theme'),
      ),
      body: Scrollbar(
        child: GridView.builder(
            itemCount: data.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            itemBuilder: (context, index) {
              return GridTile(
                child: Container(
                  color: Colors.amber,
                  alignment: Alignment.center,
                  child: Text(
                    data[index],
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
