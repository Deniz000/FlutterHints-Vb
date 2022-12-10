import 'package:flutter/material.dart';

class ButtonLearnView extends StatelessWidget {
  const ButtonLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.red)),
              child: const Text('Tıkla')),
          TextButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.green;
                } else {
                  return Colors.white;
                }
              })),
              child: const Text('Tıkla')),
          ElevatedButton(onPressed: () {}, child: const Text('data')),
          IconButton(onPressed: () {}, icon: const Icon(Icons.ac_unit)),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          SizedBox(
            width: 200,
            child: OutlinedButton(
                onPressed: () {
                  // servise istek at
                  //sayfanin rengini düzenle
                },
                style:
                    OutlinedButton.styleFrom(padding: const EdgeInsets.all(10)),
                child: const Text('data')),
          ),
          InkWell(
            onTap: () {},
            child: const Text('custom'),
          ),
          Container(
            height: 200,
            color: Colors.white,
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, left: 20, right: 20),
                child: Text(
                  'Place Bid',
                  style: Theme.of(context).textTheme.headline4,
                ),
              )),
        ],
      ),
    );
  }
}
