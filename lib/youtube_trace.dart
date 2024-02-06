import 'package:flutter/material.dart';

class YoutubeTrace extends StatelessWidget {
  YoutubeTrace();
  //変数
  final List<String> entries = <String>[
    '【超神回】メンバー入れ替えて本気で飲み会したら腹筋崩壊したwwwww',
    '【思いつき】深夜ノリで仕事してるメンバーをご飯に誘ったら楽しすぎたwwwwww',
    '【放送事故】ばんばんざいぎしと渋谷で飲み歩いたら泥酔して大暴走したwwwww',
    '【男のロマン】深夜の公園に高級カブトムシ大量発生でひゅうが少年が覚醒しましたwwwww',
    '【第1回】リアクションしない王者決定戦',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Youtube Trace",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: const [
          Icon(Icons.laptop),
          SizedBox(width: 24),
          Icon(Icons.search),
          SizedBox(width: 24),
          Icon(Icons.menu),
          SizedBox(width: 24),
        ],
      ),
      // ListViewはスクロール機能付き！！！
      body: Container(
        color: Colors.black,
        child: ListView.builder(
            padding: const EdgeInsets.all(8.0),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 100,
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Image.network(
                        "https://biz-journal.jp/wp-content/uploads/2023/06/post_347889_comdot.jpg"),
                    const SizedBox(width: 18),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            entries[index],
                            style: const TextStyle(
                              height: 1,
                              color: Colors.white,
                              fontSize: 16,
                            ),
                            maxLines: 3,
                          ),
                          const Text(
                            '100万回視聴 10日前',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
