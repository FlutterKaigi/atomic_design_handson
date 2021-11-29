import '../../../components/common/atoms/footer_text.dart';
import 'package:flutter/material.dart';

class FooterUserName extends StatelessWidget {
  const FooterUserName({Key? key, this.userName}) : super(key: key);
  final String? userName;

  @override
  Widget build(BuildContext context) {
    return FooterText(
      text: 'Powered By $userName',
    );
  }
}
