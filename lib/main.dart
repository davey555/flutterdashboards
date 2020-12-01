import 'package:flutter/material.dart';
import 'package:profiles/screens/screeens.dart';
import 'package:profiles/Widgets/widgetsexport.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.red,
      accentColor: Colors.orange,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    debugShowCheckedModeBanner: false,
  //  home:Articles2(),
    initialRoute: 'MyHomePage',
    routes: {
      'MyHomePage': (context) => MyHomePage(),
      'BlogPage': (context) => BlogPage(),
      'DashBoard1': (context) => DashBoard1(),
      'DashBoard2': (context) => DashBoard2(),
     
    },
  ));
}
