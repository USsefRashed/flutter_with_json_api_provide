import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }

  Future<List> getData() async {
    http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    return jsonDecode(response.body);
  }
}

class HomeState extends State<Home> {
  var home = new Home();
  List data = [];
  int result1 = 0;
  String result2 = '';
  String result3 = '';
  void onPressShowData() async {
    data = await (home.getData());
    print(data);
    setState(() {
      for (int i = 0; i < data.length;i++){
      result1 = data[i]['id'];
      result2 = data[i]['title'];
      result3 = data[i]['body'];
      } 
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('JSON test'),
        backgroundColor: Colors.grey,
      ),
      body: new Container(
        child: new ListView(children: <Widget>[
          new Text('Hello world !'),
          new RaisedButton(
            onPressed: onPressShowData,
            child: new Text('click me'),
          ),
          new Container(child: new Text('id :\t${result1}\n\n')),
          new Container(child: new Text('title :\t${result2}\n\n')),
          new Container(child: new Text('body :\t${result3}\n\n'))
        ]),
      ),
    );
  }
}
