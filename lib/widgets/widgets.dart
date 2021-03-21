import 'package:flutter/material.dart';

Widget getDataFromFirebase(context, title){
  return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width - 10,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.video_collection,
                color: Colors.red,
                size: 55,),
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ADDED', style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 15,
                  ),
                  ),
                  Text(title, style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 8,),
          Text(
            'Too Much',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          )
        ],
      ),
  );
}


// Container of all the tracked categories
Widget trackedCategoriesForHome(Map categories, context){

  return Container(
    padding: EdgeInsets.all(20),
    margin: EdgeInsets.all(8),
    width: MediaQuery.of(context).size.width - 10,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Column(

    ),
  );
}