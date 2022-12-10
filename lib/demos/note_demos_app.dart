import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterdeneme/101/image_learn.dart';

class NoteDemosApp extends StatelessWidget {
  const NoteDemosApp({super.key});
  final _title = 'Create your first note';
  final _createNote = 'Create a Note';
  final _importNotes = 'Import Notes';
  //description da bu şekilde verilebilir.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            PngImage(path: ImageItems.appleWithBook2),
            Padding(
              padding: PaddingItems.verticalPadding,
              child: _TitleWidget(title: _title),
            ),
            const Padding(
              padding: PaddingItems.verticalPadding,
              child: _SubtitleWidget(),
            ),
            const Spacer(),
            _createButton(context),
            TextButton(onPressed: () {}, child: Text(_importNotes)),
            const SizedBox(
              height: 90,
            )
          ],
        ),
      ),
    );
  }

  ElevatedButton _createButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 251, 64, 67),
      ),
      child: SizedBox(
          height: PaddingItems.buttonNormalHeight,
          child: Center(
              child: Text(
            _createNote,
            style: Theme.of(context).textTheme.headline5,
          ))),
    );
  }
}

//Centered TextWidget
class _SubtitleWidget extends StatelessWidget {
  const _SubtitleWidget({
    Key? key,
    this.textAlign = TextAlign.center,
  }) : super(key: key);
  final TextAlign textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      'Add a note ' * 8,
      textAlign: textAlign,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w400),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: Theme.of(context)
            .textTheme
            .headline5
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.w800));
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);

  static const double buttonNormalHeight = 50;
}
