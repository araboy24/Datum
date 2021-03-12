import 'package:datum/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:datum/services/auth.dart';

class AddData extends StatefulWidget {
  @override
  _AddDataState createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {

  final _formKey = GlobalKey<FormState>();
  final AuthService _auth = AuthService();
  String title = '';

  @override
  Widget build(BuildContext context) {
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
        decoration: bgDec,
        child: Column(
          children: [
            TextFormField(
              decoration:
              textInputDecoration.copyWith(hintText: 'Title'),
              validator: (val) =>
              val.isEmpty ? 'Enter a Title' : null,
              onChanged: (val) {
                  setState(() {
                    title = val;
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
