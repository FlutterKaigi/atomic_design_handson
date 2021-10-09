import 'package:flutter/material.dart';

class SideInfoTitle extends StatelessWidget {
  const SideInfoTitle({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      style: Theme.of(context).textTheme.subtitle1,
      softWrap: true,
    );
  }
}
