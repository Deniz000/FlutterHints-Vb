import 'package:flutter/material.dart';
import 'package:flutterdeneme/core/random_image.dart';

class StackView extends StatelessWidget {
  const StackView({super.key});
  final _carHeight = 60.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(
                    child: const RandomImageView(),
                    bottom: _carHeight / 2,
                  ),
                  Positioned(
                      height: _carHeight,
                      width: 300,
                      bottom: 0,
                      child: const Card(
                        color: Colors.blueAccent,
                        shape: RoundedRectangleBorder(),
                      ))
                ],
              )),
          const Spacer(
            flex: 6,
          ),
        ],
      ),
    );
  }
}
