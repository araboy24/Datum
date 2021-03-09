import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text('Datum', style: TextStyle(
            fontSize: 22,
            color: Colors.black,
          ),),
        ),
        body: Container(
          color: Colors.blueGrey[300],
          child: Text('sqrt(data)=DATUM',
          style: TextStyle(
            fontSize: 35
          ),),
        ),
      ),
    );
  }
}
