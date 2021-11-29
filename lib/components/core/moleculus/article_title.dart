import '../../../components/core/atoms/article_date.dart';
import '../../../components/core/atoms/article_title_text.dart';
import 'package:flutter/material.dart';

class ArticleTitle extends StatelessWidget {
  const ArticleTitle({Key? key, this.date, this.title}) : super(key: key);
  final String? date;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(
            top: 0,
            bottom: 0,
            right: 0,
            left: 0,
          ),
          child: ArticleDate(date: date!),
        ),
        Container(
          padding: const EdgeInsets.only(
            top: 0,
            bottom: 10,
            right: 0,
            left: 0,
          ),
          child: ArticleTitleText(
            title: title!,
          ),
        ),
      ],
    );
  }
}
