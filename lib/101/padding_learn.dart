import 'package:flutter/material.dart';

class PaddingLearnView extends StatelessWidget {
  const PaddingLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            color: Colors.white,
            height: 100,
          ),
        ),
        Padding(
          padding: ProjectPadding.pagePaddingRightOnly +
              ProjectPadding.pagePaddingVertical,
          child: Container(
            color: Colors.white,
            height: 100,
          ),
        ),
        ElevatedButton(onPressed: () {}, child: Text('dene'))
      ]),
    );
  }
}

class ProjectPadding {
  //tüm sayfalarımın paddingi
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 10);
  static const pagePaddingRightOnly = EdgeInsets.only(right: 20);
}
