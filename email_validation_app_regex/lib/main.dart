import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Tutorial',
      home: MyHomePage(),
      theme: ThemeData.dark(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _form = GlobalKey<FormState>();
  bool _isValid = false;

  void _saveForm() {
    setState(() {
      _isValid = _form.currentState.validate();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('email validation app regex'),
      ),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Form(
          key: _form,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter your Email ',
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'This Field is required';
                  }

                  if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                    return "Please Enter A valid Email address";
                  }
                  return null;
                },
              ),
              SizedBox(height: 25),
              TextButton(
                onPressed: _saveForm,
                child: Text('Check email'),
              ),
              SizedBox(height: 25),
              _isValid ? Text('Your email seems nice') : Container()
            ],
          ),
        ),
      ),
    );
  }
}
