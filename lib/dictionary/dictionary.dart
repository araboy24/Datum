import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Dictionary extends StatefulWidget {
  @override
  _DictionaryState createState() => _DictionaryState();
}

class _DictionaryState extends State<Dictionary> {

  String _url = "https://owlbot.info/api/v4/dictionary/";
  String _token = "c39fc57ccdd4c8f4062d8a748bbc0bd95dd04de2";

  TextEditingController _controller = TextEditingController();

  StreamController _streamController;
  Stream _stream;

  _search() async {
    if(_controller.text == null || _controller.text.length == 0){
      _streamController.add(null);
    }

    Response response = await get(_url, headers: {'Authorization': 'Token ' + _token});
    _streamController.add(json.decode(response.body));
  }

  @override
  void initState() {
    super.initState();
    _streamController = StreamController();
    _stream = _streamController.stream;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flictionary'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48.0),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 12.0, bottom: 8.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  child: TextFormField(
                    onChanged: (String text) {

                    },
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Search for a word',
                      contentPadding: EdgeInsets.only(left: 24.0),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {
                  _search();
                },
              ),
            ],
          ),
        ),
      ),
      body: StreamBuilder(

      ),
    );
  }
}
