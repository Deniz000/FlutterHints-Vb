import 'package:flutter/material.dart';

class CardLearnView extends StatelessWidget {
  const CardLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: const [
          _CustomCard(
              child: SizedBox(
                  height: 100, width: 300, child: Center(child: Text('Ali')))),
        ],
      ),
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    var roundedRectangleBorder =
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
    //her yerde kullanacaksak component olarak, bunu ayırırız.
    return Card(
      elevation: 1,
      margin: ProjectMargins.cardMargin,
      color: Colors.black,
      shape: roundedRectangleBorder,
      child: child,
    );
  }
}
