import 'package:datum/models/user.dart';
import 'package:datum/views/authenticate/authenticate.dart';
import 'package:datum/views/haptic/haptic_home.dart';
import 'package:datum/views/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    if (user == null) {
      return Authenticate();
    } else {
      return HapticHome();
    }
  }
}