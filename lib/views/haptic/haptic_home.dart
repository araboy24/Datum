import 'package:datum/shared/constants.dart';
import 'package:datum/views/haptic/haptic_add_category.dart';
import 'package:datum/views/haptic/haptic_settings.dart';
import 'package:datum/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:datum/services/auth.dart';
import 'package:intl/intl.dart';

class HapticHome extends StatefulWidget {
  @override
  _HapticHomeState createState() => _HapticHomeState();
}

class _HapticHomeState extends State<HapticHome> {
  final AuthService _auth = AuthService();
  static final DateTime now = DateTime.now();
  static final DateFormat formatter = DateFormat('MM-dd-yyyy');
  final String formatted = formatter.format(now);
   // something like 2013-04-20
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
          children: [
            Text('Today', style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
            ),
            Text(formatted, style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.grey[600]
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(8),
              width: MediaQuery.of(context).size.width - 10,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        HapticAddCategory(),
                  ),
                );
                  },

                child: Icon(Icons.add,
                  color: Colors.blueGrey,
                size: 35,),
              ),
            ),
            // Container(
            //   padding: EdgeInsets.all(20),
            //   margin: EdgeInsets.all(8),
            //   width: MediaQuery.of(context).size.width - 10,
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.circular(15),
            //   ),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Row(
            //         children: [
            //           Icon(Icons.video_collection,
            //             color: Colors.red,
            //             size: 55,),
            //           SizedBox(width: 20,),
            //           Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Text('ADDED', style: TextStyle(
            //                 color: Colors.grey[500],
            //                 fontSize: 15,
            //               ),
            //               ),
            //               Text('YouTube', style: TextStyle(
            //                   color: Colors.black,
            //                   fontSize: 20,
            //                   fontWeight: FontWeight.bold
            //               ),
            //               ),
            //             ],
            //           )
            //         ],
            //       ),
            //       SizedBox(height: 8,),
            //       Text(
            //         'Too Much',
            //         style: TextStyle(
            //           color: Colors.black,
            //           fontSize: 25,
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            getDataFromFirebase(context, 'YouTube'),
            RaisedButton(
              child: Text('Settings'),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        HapticSettings(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
