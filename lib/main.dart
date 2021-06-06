import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String flutterText = "Hola Mundo";
  int index = 0;
  List<String> collections = [
    "Mi Nombre es...",
    "Magda",
    "Y soy Ingeniera en proceso."
  ];

  void onPressBotton() {
    setState(() {
      flutterText = collections[index];
      index = index < 2 ? index + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Magdalena Flores'),
        backgroundColor: Colors.red,
      ), // AppBar
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                flutterText,
                style: TextStyle(fontSize: 40.0),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              RaisedButton(
                onPressed: onPressBotton,
                child: Text(
                  "Puchale",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
              ), // RaisedButton
            ],
          ), // Column
        ), // Center
      ), // Container
    );
  }
}
