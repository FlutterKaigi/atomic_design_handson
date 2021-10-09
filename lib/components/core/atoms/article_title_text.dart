import 'package:flutter/material.dart';

class ArticleTitleText extends StatelessWidget {
  const ArticleTitleText({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$title',
      style: Theme.of(context).textTheme.headline3,
    );
  }
}
