import 'package:flutter/material.dart';

class StackLearnView extends StatelessWidget {
  const StackLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(children: [
        Container(
          color: Colors.red,
          height: 100,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.blue,
            height: 100,
          ),
        ),
        Positioned(
            right: 0,
            left: 0,
            height: 50,
            top: 30,
            child: Container(
              color: Colors.green,
            )),
        Positioned.fill(
            right: 0,
            left: 0,
            top: 30,
            child: Container(
              color: Colors.green,
            ))
      ]),
    );
  }
}
