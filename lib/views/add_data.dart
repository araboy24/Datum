import 'package:datum/services/database.dart';
import 'package:datum/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:datum/services/auth.dart';
import 'package:datum/models/user.dart';
import 'package:provider/provider.dart';

class AddData extends StatefulWidget {
  @override
  _AddDataState createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {

  final _formKey = GlobalKey<FormState>();
  final AuthService _auth = AuthService();
  String title = '';
  String measurement = '';
  String unit = '';

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    return Scaffold(
      appBar: basicAppBar(_auth),
      // AppBar(
      //   backgroundColor: Colors.black,
      //   title: Text('DATUM', style: TextStyle(
      //     fontSize: 35,
      //     color: Colors.blue[200],
      //   ),
      //   ),
      //   actions: [
      //     FlatButton.icon(onPressed: () async {
      //       await _auth.signOut();
      //     },
      //       icon: Icon(
      //         Icons.logout,
      //         color: Colors.blue[200],
      //       ),
      //       label: Text(''),
      //     ),
      //   ],
      // ),
      body: Container(
        width: 420,
        decoration: bgDec,
        child: Form(
          key: _formKey,
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
              TextFormField(
                decoration:
                textInputDecoration.copyWith(hintText: 'Measurement'),
                validator: (val) =>
                val.isEmpty ? 'Enter a Measurement' : null,
                onChanged: (val) {
                  setState(() {
                    measurement = val;
                  },
                  );
                },
              ),
              TextFormField(
                decoration:
                textInputDecoration.copyWith(hintText: 'Unit'),
                validator: (val) =>
                val.isEmpty ? 'Enter a Unit' : null,
                onChanged: (val) {
                  setState(() {
                    unit = val;
                  },
                  );
                },
              ),
              FlatButton(
                color: Colors.white,
                onPressed: () async {
                  if (_formKey.currentState.validate()) {
                    print('Valid Input');
                    DatabaseService(uid: user.uid).addData2(title, measurement, unit);
                  }
                },

                child: Text('Store Data',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
