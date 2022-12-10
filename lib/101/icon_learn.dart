import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  const IconLearnView({super.key});
  final String _hi = 'hi Sis';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_hi),
        ),
        body: Column(
          children: [
            ProjectIcons().iconButton,
            ProjectIcons().iconButton,
          ],
        ));
  }
}

class ProjectIcons {
  final IconButton iconButton = IconButton(
    onPressed: () {},
    icon: const Icon(Icons.abc_outlined),
    color: Colors.red,
    iconSize: 40,
  );
}

//ya da class ın içinde aynı iconu yapmaktansa projenin iconlarının
//özelliklerini kapsayan bir class yapılır:

class IconSizes {
  final double iconSmall = 40;
}

class IconColors {
  //There are color codes here.
}
