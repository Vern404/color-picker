import 'package:flutter/material.dart';
import 'package:navflutter/color_picker.dart';
import 'package:navflutter/homepage.dart';
import 'package:navflutter/shades_page.dart';
import 'package:navflutter/shades_with_param.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      routes: {
        '/shades': (context) => ShadesWithParams(),
        '/color': (context) => ColorPicker(),
      },
    );
  }
}


