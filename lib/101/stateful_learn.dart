import 'package:flutter/material.dart';
import 'package:flutterdeneme/product/counter_hello_button.dart';
import 'package:flutterdeneme/product/language/language_item.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({super.key});

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int _countValue = 0;
  int _counterCustom = 0;

  void _updateCounter(bool isIncrement) {
    if (isIncrement) {
      setState(() {
        ++_countValue;
      });
    } else {
      setState(() {
        --_countValue;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(LanguageItems.welcomeTitle)),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _inc(),
          _dec(),
        ],
      ),
      body: Column(
        children: [
          Center(child: Text(_countValue.toString())),
          const Placeholder(),
          const CounterHelloButton(),
        ],
      ),
    );
  }

  FloatingActionButton _dec() {
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(false);
      },
      child: Icon(Icons.remove),
    );
  }

  Padding _inc() {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: FloatingActionButton(
        onPressed: () {
          _updateCounter(true);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
