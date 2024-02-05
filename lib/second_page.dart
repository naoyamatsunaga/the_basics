import 'package:flutter/material.dart';
import 'package:the_basics/list_page.dart';

class SecondPage extends StatelessWidget {
  // コンストラクタ
  SecondPage(this.name);

  // 変数
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/pome.png'),
            Text(
              name,
              style: const TextStyle(
                fontSize: 50,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // ボタンを押した時の処理を書く
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListPage(),
                  ),
                );
              },
              child: const Text("List Pageへ"),
            ),
          ],
        ),
      ),
    );
  }
}
