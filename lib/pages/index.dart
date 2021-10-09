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
              {'style': 'divide', 'content': 'Atomic Design は'},
              {'style': 'standard', 'content': '議論の的となる'},
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
              {'style': 'standard', 'content': '今日は Flutter のデザインについて学ぶ。'},
              {'style': 'divide', 'content': 'Flutter は'},
              {'style': 'standard', 'content': 'Widget の組み合わせです'},
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
