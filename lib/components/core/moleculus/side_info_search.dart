import 'package:atomic_design_handson/components/core/atoms/side_info_search_field.dart';
import 'package:atomic_design_handson/components/core/atoms/side_info_search_title.dart';
import 'package:flutter/material.dart';

class SideInfoSearch extends StatelessWidget {
  const SideInfoSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 0, bottom: 0, right: 0, left: 0),
          child: SideInfoSearchTitle(),
        ),
        Container(
          padding: const EdgeInsets.only(
            top: 0,
            bottom: 0,
            right: 0,
            left: 0,
          ),
          child: SideInfoSearchField(),
        ),
      ],
    );
  }
}
