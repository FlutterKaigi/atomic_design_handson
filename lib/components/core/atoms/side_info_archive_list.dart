import 'package:atomic_design_handson/components/common/atoms/side_info_link.dart';
import 'package:flutter/material.dart';

class SideInfoArchiveList extends StatelessWidget {
  const SideInfoArchiveList({Key? key, this.archive}) : super(key: key);
  final String? archive;

  @override
  Widget build(BuildContext context) {
    return SideInfoLink(text: archive!);
  }
}
