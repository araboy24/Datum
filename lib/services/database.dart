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

  Future newUserDataInit() async {
    createDataPath();
    createSettingsPath();
    createCategoriesPath();
  }

  Future createDataPath() async {
    return usersCollection.document(uid).collection('data');
  }

  Future createSettingsPath() async {
    return usersCollection.document(uid).collection('settings').document(uid+'_settings').setData({
      'isUpgraded' : false
    });
  }

  Future createCategoriesPath() async {
    return usersCollection.document(uid).collection('categories').document(uid+'_categories').setData({
      // Basic (always enabled)
      'albums' : true,
      'books' : true,
      'flights' : true,
      'games' : true,
      'podcasts' : true,


      //Activities
      'haircut': false,
      'vacation': false,
      'birthday':false,
      'journey': false,
      'concert': false,
      'museum': false,
      'bowling': false,
      'party': false,
      'night out': false,
      'wasted': false,
      'idea': false,
      'new sneakers': false,
      'smoking': false,
      'new sneakers': false,

      // Relationships
      'new relationship': false,
      'breakup': false,
      'engagement': false,
      'wedding': false,
      'new boyfriend': false,
      'new girlfriend': false,
      'sexual activity': false,
      'date': false,

      // Food
      'coffee': false,
      'wine': false,
      'alcohol': false,
      'beer': false,
      'burger': false,
      'fish': false,
      'ice cream': false,
      'water': false,

      // Sport
      'work out': false,
      'fitness': false,
      'cardio': false,
      'strength workout': false,
      'basketball': false,
      'soccer': false,
      'ping pong': false,
      'bicycle ride': false,
      'ice skating': false,
      'volleyball': false,

    });
  }

}



