import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:email_validator/email_validator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter tutorial',theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final emailController = TextEditingController();

  String message = '';

  void validateEmail(String enteredEmail) {
    if (EmailValidator.validate(enteredEmail)) {
      setState(() {
        message = 'Your Email is Correct!';
      });
    } else {
      setState(() {
        message = 'Please enter a valid email address ';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('email validator app'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Your Email'),
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
              onChanged: (enteredEmail) => validateEmail(enteredEmail),
            ),
            SizedBox(
              height: 20,
            ),
            Text(message)
          ],
        ),
      ),
    );
  }
}
