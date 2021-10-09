import 'package:atomic_design_handson/components/core/atoms/footer_blog_title.dart';
import 'package:atomic_design_handson/components/core/atoms/footer_user_name.dart';
import 'package:flutter/material.dart';

class FooterOrganisms extends StatelessWidget {
  const FooterOrganisms({Key? key, this.data}) : super(key: key);
  final Map? data;

  @override
  Widget build(BuildContext context) {
    final String title = data!['title'];
    final String userName = data!['userName'];

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(
            top: 0,
            bottom: 2.5,
            right: 0,
            left: 0,
          ),
          child: FooterBlogTitle(title: title),
        ),
        Container(
          padding: const EdgeInsets.only(
            top: 2.5,
            bottom: 0,
            right: 0,
            left: 0,
          ),
          child: FooterUserName(userName: userName),
        ),
      ],
    );
  }
}
