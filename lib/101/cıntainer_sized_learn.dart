// ignore_for_file: file_names
import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: Text('a' * 500),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 50, //boyut
            child: Text('b' * 50),
          ),
          Container(
            width: 50,
            height: 50,
            constraints: const BoxConstraints(
                maxWidth: 150, minWidth: 100, maxHeight: 100),
            // ignore: sort_child_properties_last
            child: Text('aa' * 25),
            padding: const EdgeInsets.all(10),
            decoration: ProjeUtility.boxDecoration,
          )
        ],
      ),
    );
  }
}

class ProjeUtility {
  static BoxDecoration boxDecoration =
      BoxDecoration(border: Border.all(width: 10));
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration() : super(border: Border.all(width: 10));
}
