import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  ListPage();
  //変数
  final List<String> entries = <String>['A', 'B', 'C', 'D', 'E'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text("List Page"),
      ),
      // ListViewはスクロール機能付き！！！
      body: ListView.separated(
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Container(
              color: Colors.yellow,
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '${entries[index]}',
                style: TextStyle(fontSize: 30),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(
          color: Colors.black,
        ),
      ),
    );
  }
}
