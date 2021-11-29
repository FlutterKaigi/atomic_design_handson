import '../../../components/common/atoms/footer_text.dart';
import 'package:flutter/material.dart';

class FooterBlogTitle extends StatelessWidget {
  const FooterBlogTitle({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  Widget build(BuildContext context) {
    return FooterText(
      text: title!,
    );
  }
}
