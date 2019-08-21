import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Wassword',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(fontFamily: 'NotoSans'),
      home: new HomePage(title: 'Wassword'),
    );
  }
}
