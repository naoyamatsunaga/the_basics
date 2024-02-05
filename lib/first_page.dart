import 'package:flutter/material.dart';
import 'package:the_basics/second_page.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("First Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // ボタンを押した時の処理を書く
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecondPage(),
                fullscreenDialog: true,
              ),
            );
          },
          child: const Text("次の画面へ"),
        ),
      ),
    );
  }
}
