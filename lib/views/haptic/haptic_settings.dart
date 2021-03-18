import 'dart:convert';

import 'package:datum/services/auth.dart';
import 'package:datum/shared/constants.dart';
import 'package:flutter/material.dart';

class HapticSettings extends StatefulWidget {
  @override
  _HapticSettingsState createState() => _HapticSettingsState();
}

class _HapticSettingsState extends State<HapticSettings> {
  @override
  Widget build(BuildContext context) {
    final AuthService _auth = AuthService();
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: basicAppBar(_auth),
      body: SingleChildScrollView(

        child: Container(
          width: MediaQuery.of(context).size.width,
          //height: MediaQuery.of(context).size.height,
          color: Colors.grey[200],
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(24),
                child: IconButton(
                    icon: Icon(Icons.camera,
                      size: 60,
                    ),
                    onPressed: null),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(36,12,0,6),
                    child: Text('NAME',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(12),
                width: MediaQuery.of(context).size.width-50,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text('Eid Zaben',
                              style: TextStyle(
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(36,12,0,6),
                    child: Text('CATEGORIES',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(12),
                width: MediaQuery.of(context).size.width-50,
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                            icon: Icon(Icons.adjust_rounded,
                            ),
                            onPressed: null),
                        Text('Albums',
                          style: TextStyle(
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        IconButton(
                            icon: Icon(Icons.book_online_rounded,
                            ),
                            onPressed: null),
                        Text('Books',
                          style: TextStyle(
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        IconButton(
                            icon: Icon(Icons.gamepad_outlined,
                            ),
                            onPressed: null),
                        Text('Games',
                          style: TextStyle(
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        IconButton(
                            icon: Icon(Icons.voice_chat,
                            ),
                            onPressed: null),
                        Text('Podcasts',
                          style: TextStyle(
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        IconButton(
                            icon: Icon(Icons.airplanemode_active,
                            ),
                            onPressed: null),
                        Text('Flights',
                          style: TextStyle(
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        IconButton(
                            icon: Icon(Icons.run_circle,
                            ),
                            onPressed: null),
                        Text('Steps',
                          style: TextStyle(
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        IconButton(
                            icon: Icon(Icons.confirmation_number,
                            ),
                            onPressed: null),
                        Text('Weight',
                          style: TextStyle(
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        IconButton(
                            icon: Icon(Icons.nightlight_round,
                            ),
                            onPressed: null),
                        Text('Sleep',
                          style: TextStyle(
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        IconButton(
                            icon: Icon(Icons.agriculture_outlined,
                            ),
                            onPressed: null),
                        Text('Workout',
                          style: TextStyle(
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        IconButton(
                            icon: Icon(Icons.cut,
                            ),
                            onPressed: null),
                        Text('Haircut',
                          style: TextStyle(
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        IconButton(
                            icon: Icon(Icons.whatshot_rounded,
                              color: Colors.brown,
                            ),
                            onPressed: null),
                        Text('Coffee',
                          style: TextStyle(
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        IconButton(
                            icon: Icon(Icons.video_collection_rounded,
                            ),
                            onPressed: null),
                        Text('YouTube',
                          style: TextStyle(
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(36,12,0,6),
                    child: Text('MEMBERSHIP',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(12),
                width: MediaQuery.of(context).size.width-50,
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                            icon: Icon(Icons.adjust_rounded,
                            ),
                            onPressed: null),
                        Text('Change Icon',
                        style: TextStyle(
                          color: Colors.black
                        ),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        IconButton(
                            icon: Icon(Icons.analytics_rounded,
                            ),
                            onPressed: null),
                        Text('Change Icon',
                          style: TextStyle(
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(36,12,0,0),
                    child: Text('7 days of free trial on us • Cancel anytime',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(height: 8,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(36,12,0,12),
                    child: Text('Restore purchases',
                      style: TextStyle(
                        color: Colors.grey,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(12),
                width: MediaQuery.of(context).size.width-50,
                child: Row(
                      children: [
                        IconButton(
                            icon: Icon(Icons.favorite,
                            ),
                            onPressed: null),
                        Text('Hall of Fame',
                          style: TextStyle(
                              color: Colors.black
                          ),
                        ),
                        Spacer(),
                        IconButton(
                            icon: Icon(Icons.keyboard_arrow_right,
                            ),
                            onPressed: null),
                      ],
                    ),
              ),

              SizedBox(height: 16,),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(12),
                width: MediaQuery.of(context).size.width-50,
                child: Row(
                  children: [
                    IconButton(
                        icon: Icon(Icons.folder,
                        ),
                        onPressed: null),
                    Text('Terms of Service',
                      style: TextStyle(
                          color: Colors.black
                      ),
                    ),
                    Spacer(),
                    IconButton(
                        icon: Icon(Icons.keyboard_arrow_right,
                        ),
                        onPressed: null),
                  ],
                ),
              ),

              SizedBox(height: 16,),

              Padding(
                padding: const EdgeInsets.only(bottom: 24.0),
                child: Text('DATUM',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.grey[500],
                    fontWeight: FontWeight.bold
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
