import 'package:flutter/material.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Başlık Veriyoruz...'),
        centerTitle: true,
      ),
      body: const Text('merhaba'),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(items: [
        const BottomNavigationBarItem(
            icon: Icon(Icons.abc_outlined), label: 'a'),
        const BottomNavigationBarItem(
            icon: Icon(Icons.abc_outlined), label: 'b'),
      ]),
    );
  }
}
