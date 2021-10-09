import 'package:flutter/material.dart';

class FooterText extends StatelessWidget {
  const FooterText({Key? key, this.text}) : super(key: key);
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      style: Theme.of(context).textTheme.subtitle2,
    );
  }
}
