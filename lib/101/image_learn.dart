import 'package:flutter/material.dart';

class ImageLearnView extends StatelessWidget {
  const ImageLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: SizedBox(
                child: PngImage(
              path: ImageItems.appleWithBook2,
            )),
          ),
          Image.network(
            'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pngwing.com%2Fen%2Ffree-png-ztygn&psig=AOvVaw3N0isFw7FvSo9h1AVM0Bry&ust=1670676184980000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCLj1yPXH7PsCFQAAAAAdAAAAABAJ',
            errorBuilder: (context, error, stackTrace) =>
                Icon(Icons.abc_outlined),
          ),
        ],
      ),
    );
  }
}

class ImageItems {
  static String appleWithBook = 'assets/y.png';
  static String appleWithBook2 = 'y';
}

class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.path});
  final String path;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath,
      fit: BoxFit.cover,
    );
  }

  String get _nameWithPath => 'assets/png/$path.png';
}
