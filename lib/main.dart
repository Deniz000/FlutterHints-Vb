import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '101/column_row_learn.dart';
import '101/list_tite.dart';
import '101/stack_lear.dart';
import '101/stateful_learn.dart';
import 'core/random_image.dart';
import 'demos/stack_demo_view.dart';

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
          progressIndicatorTheme:
              const ProgressIndicatorThemeData(color: Colors.white),
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            systemOverlayStyle: SystemUiOverlayStyle.light,
          )),
      home: const StatefullLearn(),
    );
  }
}
