import 'package:datum/services/auth.dart';
import 'package:datum/shared/constants.dart';
import 'package:flutter/material.dart';

class HapticAddCategory extends StatefulWidget {
  @override
  _HapticAddCategoryState createState() => _HapticAddCategoryState();
}

class _HapticAddCategoryState extends State<HapticAddCategory> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: basicAppBar(_auth),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.grey[300],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.video_collection,
              color: Colors.red,
              size: 55,),
            SizedBox(height: 15),
            Text('YouTube', style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 24,
            ),
            ),
            SizedBox(height: 8),
            Text('Tap to Rename', style: TextStyle(
              color: Colors.grey[500],
              fontSize: 16,
            ),
            ),
            SizedBox(height: 24),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  color: Colors.grey[800],
                    child: Text('Symbol', style: TextStyle(
                      color: Colors.white,
                      ),
                    ),
                    ),
                RaisedButton(
                    color: Colors.grey[800],
                    child: Text('Color', style: TextStyle(
                      color: Colors.white,
                      ),
                    ),
                ),
              ],
            ),
            SizedBox(height: 8,),
            Row(

              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('ACTIVITES', style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 15,
                  ),),
                )  ,
                Spacer(),
              ]
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FlatButton(
                      minWidth: 50,
                      color: Colors.grey[300],
                      onPressed: null,
                      child: Icon(Icons.video_collection,
                        color: Colors.grey[600],
                        size: 50,),
                    ),
                    FlatButton(
                      minWidth: 50,
                      color: Colors.grey[300],
                      onPressed: null,
                      child: Icon(Icons.video_collection,
                        color: Colors.grey[600],
                        size: 50,),
                    ),
                    FlatButton(
                      minWidth: 50,
                      color: Colors.grey[300],
                      onPressed: null,
                      child: Icon(Icons.video_collection,
                        color: Colors.grey[600],
                        size: 50,),
                    ),
                    FlatButton(
                      minWidth: 50,
                      color: Colors.grey[300],
                      onPressed: null,
                      child: Icon(Icons.video_collection,
                        color: Colors.grey[600],
                        size: 50,),
                    ),
                  ],
                ),
                SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FlatButton(
                      minWidth: 50,
                      color: Colors.grey[300],
                      onPressed: null,
                      child: Icon(Icons.video_collection,
                        color: Colors.grey[600],
                        size: 50,),
                    ),
                    FlatButton(
                      minWidth: 50,
                      color: Colors.grey[300],
                      onPressed: null,
                      child: Icon(Icons.video_collection,
                        color: Colors.grey[600],
                        size: 50,),
                    ),
                    FlatButton(
                      minWidth: 50,
                      color: Colors.grey[300],
                      onPressed: null,
                      child: Icon(Icons.video_collection,
                        color: Colors.grey[600],
                        size: 50,),
                    ),
                    FlatButton(
                      minWidth: 50,
                      color: Colors.grey[300],
                      onPressed: null,
                      child: Icon(Icons.video_collection,
                        color: Colors.grey[600],
                        size: 50,),
                    ),
                  ],
                ),
                SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FlatButton(
                      minWidth: 50,
                      color: Colors.grey[300],
                      onPressed: null,
                      child: Icon(Icons.video_collection,
                        color: Colors.grey[600],
                        size: 50,),
                    ),
                    FlatButton(
                      minWidth: 50,
                      color: Colors.grey[300],
                      onPressed: null,
                      child: Icon(Icons.video_collection,
                        color: Colors.grey[600],
                        size: 50,),
                    ),
                    FlatButton(
                      minWidth: 50,
                      color: Colors.grey[300],
                      onPressed: null,
                      child: Icon(Icons.video_collection,
                        color: Colors.grey[600],
                        size: 50,),
                    ),
                    FlatButton(
                      minWidth: 50,
                      color: Colors.grey[300],
                      onPressed: null,
                      child: Icon(Icons.video_collection,
                        color: Colors.grey[600],
                        size: 50,),
                    ),
                  ],
                ),
                SizedBox(height: 12,),
                ElevatedButton(
                    onPressed: null,
                    child: Text('Save', style: TextStyle(color: Colors.black),),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
