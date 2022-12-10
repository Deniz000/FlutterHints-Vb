import 'package:flutter/material.dart';

//31.57
class TextLearnView extends StatelessWidget {
  TextLearnView({super.key});

  final String name = 'Gül';
  final Projectkeys keys = Projectkeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructors
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ('By the $name ' * 10),
              maxLines: 4,
              textAlign: TextAlign.left,
              style: ProjectStyles.welcomeStyle,
              // ignore: prefer_const_constructors
            ),
            Text(
              (keys.welcome),
              textAlign: TextAlign.left,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: ProjectColors.mainColors),
              // ignore: prefer_const_constructors
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectStyles {
  // ignore: prefer_const_constructors
  static TextStyle welcomeStyle = TextStyle(
      color: Colors.white,
      backgroundColor: Colors.brown,
      letterSpacing: 3,
      wordSpacing: 4,
      decoration: TextDecoration.underline,
      fontSize: 16,
      decorationColor: Colors.orange,
      fontWeight: FontWeight.w600);
}

class ProjectColors {
  static Color mainColors = Colors.orangeAccent;
}

class Projectkeys {
  final String welcome = 'Merhaba';
}
