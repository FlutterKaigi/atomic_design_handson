import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class ArticleBadge extends StatelessWidget {
  const ArticleBadge({Key? key, this.badge}) : super(key: key);
  final String? badge;

  @override
  Widget build(BuildContext context) {
    return Badge(
      toAnimate: false,
      shape: BadgeShape.square,
      badgeColor: Colors.white54,
      borderRadius: BorderRadius.circular(8),
      badgeContent: Text(
        '$badge',
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
