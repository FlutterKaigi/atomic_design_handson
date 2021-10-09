import 'package:flutter/material.dart';

class ArticleContentDivide extends StatelessWidget {
  const ArticleContentDivide({Key? key, this.content}) : super(key: key);
  final String? content;

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
          child: Text(
            content!,
            style: Theme.of(context).textTheme.headline5,
            softWrap: true,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(
            top: 0,
            bottom: 0,
            right: 0,
            left: 0,
          ),
          child: const Divider(
            color: Colors.grey,
            height: 20,
            thickness: 1,
            indent: 0,
            endIndent: 0,
          ),
        ),
      ],
    );
  }
}
