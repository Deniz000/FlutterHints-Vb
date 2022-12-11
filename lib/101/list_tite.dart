import 'package:flutter/material.dart';
import 'package:flutterdeneme/core/random_image.dart';

class ListTitleLearnView extends StatelessWidget {
  const ListTitleLearnView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: const RandomImageView(),
                contentPadding: EdgeInsets.zero,
                onTap: () {},
                dense: true,
                subtitle: Text('How do you use your car?'),
                leading: Icon(Icons.money),
                trailing: Container(
                  child: Icon(Icons.chevron_right),
                  color: Colors.red,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
