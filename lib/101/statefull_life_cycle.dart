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
  //init state gibi çalışır. SOnrasında çalışır
  //içdeki state değeri komple değiştiğinde, datalar update edildiğinde kullanılır

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('c');
  }

  @override
  void didUpdateWidget(covariant StetefullLifeView oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('b');
  }

//dispose sayfadan çıkılan andır, sayfanın öldüğü andır
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('Alo');
  }

  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    _computeName();
    print('a');
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
