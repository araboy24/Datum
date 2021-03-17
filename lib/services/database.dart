import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:datum/models/user.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});
  final CollectionReference usersCollection = Firestore.instance.collection('users');

  Future addData(title, measurement, unit) async {
    return await usersCollection.document(uid).setData(
      {
        'title': title,
        'measurement': measurement,
        'unit': unit,
      }
    );
  }

  Future addData2(title, measurement, unit) async {
    return await usersCollection.document(uid).collection('data').document(title).setData(
        {
          'measurement': measurement,
          'unit': unit,
        }
    );
  }

}

