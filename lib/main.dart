import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '101/card_learn.dart';
import '101/image_learn.dart';
import '101/padding_learn.dart';
import 'demos/note_demos_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
          // ignore: prefer_const_constructors
          appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      )),
      home: const NoteDemosApp(),
    );
  }
}
