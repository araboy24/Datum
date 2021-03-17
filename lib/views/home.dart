import 'package:datum/services/auth.dart';
import 'package:datum/shared/constants.dart';
import 'package:datum/views/add_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:datum/models/user.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final _formKey = GlobalKey<FormState>();

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: Container(
        width: 420,
        //color: Colors.blueGrey[300],
        decoration: bgDec,
        child: Column(
          children: [
            // Text('sqrt(data)=DATUM',
            //     style: TextStyle(
            //       fontSize: 35,
            //       color: Colors.white,
            //     ),
            //   ),
            FlatButton(
              color: Colors.white,
              onPressed: () {
              if (user != null) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                          AddData(),
                    ),
                );
              }
            },
              child: Text('Add Data',
                  style: TextStyle(
                ),
              ),
            ),
            FlatButton(
              child: Text(''),
            ),
          ],
        ),
      ),
    );
  }
}
