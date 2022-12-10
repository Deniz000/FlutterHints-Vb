import 'package:flutter/material.dart';

class StatesLearnView extends StatelessWidget {
  const StatesLearnView({super.key});
  final String title2 = 'Veli';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          TitleTextWidget(
            title: title2,
          ),
          _emptyBox(),
          const TitleTextWidget(title: 'Veeli'),
          const TitleTextWidget(title: 'Veeeli'),
          const _CustomContainer(),
          _emptyBox()
        ],
      ),
    );
  }

  SizedBox _emptyBox() => SizedBox(
        height: 10,
      );
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.red),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, required this.title});
  final String title;
  //bu kompenente title diye bir text datası gelecek, ama bu boş gelebilir

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline3,
    );
  }
}
