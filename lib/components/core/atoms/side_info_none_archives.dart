import 'package:flutter/material.dart';

class SideInfoNoneArchive extends StatelessWidget {
  const SideInfoNoneArchive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'アーカイブはありません',
      style: Theme.of(context).textTheme.subtitle2,
      softWrap: true,
    );
  }
}
