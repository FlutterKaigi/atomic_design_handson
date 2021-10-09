import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';

class SideInfoLink extends StatelessWidget {
  const SideInfoLink({Key? key, this.text}) : super(key: key);
  final String? text;

  @override
  Widget build(BuildContext context) {
    return StyledText(
      text: '<link href="">$text</link>',
      style: Theme.of(context).textTheme.subtitle2,
      softWrap: true,
      tags: {
        'link': StyledTextActionTag(
          (_, attrs) => () {},
          style: const TextStyle(decoration: TextDecoration.underline),
        ),
      },
    );
  }
}
