import 'package:flutter/material.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({super.key});
  final String _title = 'AppBar Öğreniyorum';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(_title)),
        leading: const Icon(Icons.chevron_left),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          const Center(child: CircularProgressIndicator())
        ],
      ),
    );
  }
}
