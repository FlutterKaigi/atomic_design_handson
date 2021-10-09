import 'package:flutter/material.dart';

class SideInfoSearchField extends StatelessWidget {
  const SideInfoSearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
      style: TextStyle(
        color: Colors.grey,
      ),
      maxLines: 1,
      decoration: InputDecoration(
        hintText: '記事を検索',
      ),
    );
  }
}
