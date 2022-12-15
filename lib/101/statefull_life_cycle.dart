import 'package:flutter/material.dart';

class StetefullLifeView extends StatefulWidget {
  const StetefullLifeView({super.key, required this.message});
  final String message;

  @override
  State<StetefullLifeView> createState() => StetefullLifeViewState();
}

class StetefullLifeViewState extends State<StetefullLifeView> {
  String _message = '';
  late final bool _isOdd; //contructor anında değerini alacak
  // init state daha ekran açılmadan önce değerini alacak ve sabitlemiş olacak
  //mesaj tekse yanına tek yoksa çift yaz
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    _computeName();
  }

  void _computeName() {
    if (_isOdd) {
      _message += 'Çift';
    } else {
      _message += 'Tek';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_message),
      ),
      body: _isOdd
          ? TextButton(onPressed: (() {}), child: Text(_message))
          : ElevatedButton(onPressed: (() {}), child: Text(_message)),
    );
  }
}
