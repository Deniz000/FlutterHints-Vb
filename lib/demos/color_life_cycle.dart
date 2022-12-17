import 'package:flutter/material.dart';
import 'package:flutterdeneme/demos/color_demos_view.dart';

class ColorLifeCycleView extends StatefulWidget {
  const ColorLifeCycleView({super.key});

  @override
  State<ColorLifeCycleView> createState() => _ColorLifeCycleViewState();
}

class _ColorLifeCycleViewState extends State<ColorLifeCycleView> {
  Color? _backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed: _changeBacground, icon: Icon(Icons.clear))
      ]),
      body: Column(
        children: [
          const Spacer(),
          Expanded(
              child: ColorDemos(
            initialColor: _backgroundColor,
          ))
        ],
      ),
    );
  }

  void _changeBacground() {
    setState(() {
      _backgroundColor = Colors.pink;
    });
  }
}
