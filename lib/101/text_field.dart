import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});
  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            maxLength: 20,
            buildCounter: (BuildContext context,
                {int? currentLength, bool? isFocused, int? maxLength}) {
              return _animatedContainer(currentLength);
            },
            keyboardType: TextInputType.emailAddress,
            autofillHints: [AutofillHints.email],
            // buildCounter: (BuildContext context,
            //     {int? currentLength, bool? isFocused, int? maxLength}) {
            //   return Container(
            //     height: 10,
            //     width: 40,
            //     color: Colors.green[100 * ((currentLength ?? 0) ~/ 2)],
            //   );
            // },
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.mail),
              border: OutlineInputBorder(),
              hintText: 'Mail',
              labelText: 'Mail',
              labelStyle: TextStyle(color: Colors.red),
              // fillColor: Colors.white,
              // filled: true
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer _animatedContainer(int? currentLength) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100), //default
      height: 10,
      width: 10.0 * (currentLength ?? 0),
      color: Colors.green,
    );
  }
}
