import 'package:flutter/material.dart';

class RandomImageView extends StatelessWidget {
  const RandomImageView({super.key, this.height = 100});
  final imageUrl = 'https://picsum.photos/200/300';
  final double height;
  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      height: height,
      fit: BoxFit.cover,
    );
  }
}
