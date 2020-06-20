import 'package:aboutpage/about.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'About Me',
      theme: ThemeData(
        backgroundColor: Colors.white,
        fontFamily: 'UbuntuMono',
      ),
      routes: {
        '/': (context) => AboutScreen()
      },
      initialRoute: '/',
    );
  }
}
