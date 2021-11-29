import '../../../components/core/atoms/article_badge.dart';
import 'package:flutter/material.dart';

class ArticleBadges extends StatelessWidget {
  const ArticleBadges({Key? key, this.badges}) : super(key: key);
  final List? badges;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(
            top: 0,
            bottom: 10,
            right: 0,
            left: 0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: createArticleBadges(),
          ),
        ),
      ],
    );
  }

  List<Widget> createArticleBadges() {
    if (badges != null && badges!.isNotEmpty) {
      final widgets = <Widget>[];
      for (final element in badges!) {
        widgets.add(
          Container(
            padding: const EdgeInsets.only(
              top: 0,
              bottom: 0,
              right: 10,
              left: 0,
            ),
            child: ArticleBadge(badge: element),
          ),
        );
      }

      return widgets;
    }
    return [Container()];
  }
}
