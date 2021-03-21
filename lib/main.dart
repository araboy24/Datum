import 'package:datum/services/auth.dart';
import 'package:datum/views/home.dart';
import 'package:datum/views/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dictionary/dictionary.dart';
import 'models/user.dart';

void main() {
  runApp(
      MultiProvider(
          providers: [
      Provider<User>(
        create: (context) => User(),
      ),
  ],
        child: MyApp(),
      ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( home: Dictionary());
    //   StreamProvider<User>.value(
    //   value: AuthService().user,
    //   child: MaterialApp(
    //     initialRoute: '/',
    //     routes: {
    //       '/': (context) => Wrapper(),
    //       '/home': (context) => Home(),
    //     },
    //     debugShowCheckedModeBanner: false,
    //
    //   ),
    // );
  }
}
