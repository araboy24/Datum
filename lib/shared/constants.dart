import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
  fillColor: Colors.blueGrey,
  filled: true,
  hintStyle: TextStyle(color: Colors.black87),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 2),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlue, width: 2),
  ),
);

const bgDec = BoxDecoration(
  color: Colors.black
  // image: DecorationImage(
  //   image: AssetImage('assets/blue_black_bg.jpg'),
  //   fit: BoxFit.cover,
  // ),
);

AppBar basicAppBar(_auth){
  return AppBar(
    backgroundColor: Colors.black,
    title: Text('DATUM', style: TextStyle(
      fontSize: 35,
      color: Colors.blue[200],
    ),
    ),
    actions: [
      FlatButton.icon(onPressed: () async {
        await _auth.signOut();
      },
        icon: Icon(
          Icons.logout,
          color: Colors.blue[200],
        ),
        label: Text(''),
      ),
    ],
  );
}