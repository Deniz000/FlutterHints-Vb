import 'package:flutter/material.dart';

class ColumnRowLLearn extends StatelessWidget {
  const ColumnRowLLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.deepOrange,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.deepPurple,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.pinkAccent,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.yellowAccent,
                      ),
                    ),
                  ],
                )),
            const Spacer(
              flex: 2,
            ),
            Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text('a1'),
                    Text('a2'),
                    Text('a3'),
                  ],
                )),
            Expanded(
                flex: 4,
                child: Container(
                  color: Colors.green,
                )),
          ],
        ));
  }
}
