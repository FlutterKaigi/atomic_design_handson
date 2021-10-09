import 'package:flutter/material.dart';

class ArticleContentStandard extends StatelessWidget {
  const ArticleContentStandard({Key? key, this.content}) : super(key: key);
  final String? content;

  @override
  Widget build(BuildContext context) {
    return Text(
      content!,
      style: Theme.of(context).textTheme.bodyText1,
      softWrap: true,
    );
  }
}
