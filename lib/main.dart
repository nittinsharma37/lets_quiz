import 'package:flutter/material.dart';
import 'package:letsquiz/pages/startpage.dart';
void main(){
  runApp(
    MyApp()
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      title: "Let's quiz",
      home: StartPage(),
    );
  }
}