import 'package:atomic_design_handson/components/core/index_template.dart';
import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    final data = getData();

    return SafeArea(
      child: IndexTemplate(
        data: data,
      ),
    );
  }

  Map getData() {
    // ToDo: DBから値を取ってくる想定
    return {
      'title': 'Atomic Design',
      'header': {
        'title': 'Atomic Design',
        'imagePath': 'assets/flutterkaigi-navbar_logo.png',
      },
      'body': {
        'articles': [
          {
            'id': 2,
            'date': '2020-12-05',
            'title': 'Atomic Design へようこそ！',
            'badges': [
              'Flutter',
              'デザイン',
              '設計手法',
            ],
            'contents': [
              {
                'style': 'standard',
                'content': '今日は Flutter を利用して Atomic Design について学びます。'
              },
              {'style': 'divide', 'content': 'Atomic Design とは'},
              {
                'style': 'standard',
                'content': '''UIデザインをパーツ・コンポーネント単位で定義していく設計手法。
パーツは以下の５種類で定義される。
  【最小】Atoms（原子）…パーツの最小単位
         ・Moleculus（分子）…Atomsで構成されたパーツの単位
         ・Organisms（生体）…Moleculus＋Atomsで構成された大きなパーツの単位
         ・Template…Organismsで構成されたUIの静的デザイン。
  【最大】Pages…Templateに動的部分を加えたUIの完成形。'''
              },
            ]
          },
          {
            'id': 1,
            'date': '2020-11-14',
            'title': 'Flutter Handson へようこそ！',
            'badges': [
              'Flutter',
              'Flutter For Web',
              'デザイン',
              '設計手法',
            ],
            'contents': [
              {'style': 'standard', 'content': '今日は Flutter のUI構築について学びます。'},
              {'style': 'divide', 'content': 'Flutter とは'},
              {
                'style': 'standard',
                'content': '''Flutterの主なコンポーネントは以下の通りである。

Dartプラットフォーム
Flutterエンジン
基本ライブラリ
特定のデザイン体系向けのウィジェット
Flutter Development Tools（DevTools）
wikipediaより'''
              },
            ]
          },
        ],
        'info': {'userName': 'FlutterKaigi 実行委員会', 'archives': []}
      },
      'footer': {
        'title': 'Atomic Design',
        'userName': 'FlutterKaigi 実行委員会',
      }
    };
  }
}
