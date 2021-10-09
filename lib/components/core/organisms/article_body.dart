import 'package:atomic_design_handson/components/core/moleculus/article_badges.dart';
import 'package:atomic_design_handson/components/core/moleculus/article_contents.dart';
import 'package:atomic_design_handson/components/core/moleculus/article_title.dart';
import 'package:flutter/material.dart';

class ArticleBodyOrganisms extends StatelessWidget {
  const ArticleBodyOrganisms({Key? key, this.data}) : super(key: key);
  final List? data;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: createArticles(context));
  }

  List<Widget> createArticles(BuildContext context) {
    if (data != null && data!.isNotEmpty) {
      final widgets = <Widget>[];

      for (final element in data!) {
        final String date = element['date'];
        final String title = element['title'];
        final List badges = element['badges'];
        final List contents = element['contents'];

        final Widget widget = Container(
          padding: const EdgeInsets.only(
            top: 0,
            bottom: 100,
            right: 0,
            left: 0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(
                  top: 0,
                  bottom: 0,
                  right: 0,
                  left: 0,
                ),
                child: ArticleTitle(
                  date: date,
                  title: title,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 0,
                  bottom: 10,
                  right: 0,
                  left: 0,
                ),
                child: ArticleBadges(
                  badges: badges,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 30,
                  bottom: 20,
                  right: 0,
                  left: 0,
                ),
                child: ArticleContents(
                  contents: contents,
                ),
              ),
            ],
          ),
        );

        widgets.add(widget);
      }
      return widgets;
    }
    return [Container()];
  }
}
