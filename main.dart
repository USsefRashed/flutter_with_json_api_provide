import 'package:flutter/material.dart';
import 'package:flutter_with_json_api_provide/GUI/home.dart';

void main() async {
  // var home = new Home();
  // List data = await (home.getData());
  // print(data[4]['body']);
  // for (int i = 0; i < data.length; i++) {
  //   print('title $i:${data[i]['title']}');
  // }
  runApp(
    new MaterialApp(
      home: new Home(),
    ),
  );
}
