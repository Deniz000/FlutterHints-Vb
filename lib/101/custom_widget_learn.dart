import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget with _ColorsUtility {
  CustomWidgetLearn({super.key});
  final String title = 'Food';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: CustomFoodButton(
                redColor: redColor,
                title: title,
                whiteColor: whiteColor,
                onPressed: () {},
              ),
            ),
          )),
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CustomFoodButton(
                onPressed: () {},
                redColor: redColor,
                title: title,
                whiteColor: whiteColor),
          )
        ],
      ),
    );
  }
} //13.18

class _PaddingUtility {
  // runtime da gelecek
  final EdgeInsets normalPadding = const EdgeInsets.all(8.0);
  final EdgeInsets normal2XPadding = const EdgeInsets.all(16.0);
}

class CustomFoodButton extends StatelessWidget {
  const CustomFoodButton({
    Key? key,
    required this.redColor,
    required this.title,
    required this.whiteColor,
    required this.onPressed,
  }) : super(key: key);
  final Color redColor;
  final String title;
  final Color whiteColor;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: redColor, shape: const StadiumBorder()),
      onPressed: () {},
      child: Text(
        title,
        style:
            Theme.of(context).textTheme.subtitle1?.copyWith(color: whiteColor),
      ),
    );
  }
}

class _ColorsUtility {
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
}
