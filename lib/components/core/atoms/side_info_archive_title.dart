import 'package:atomic_design_handson/components/common/atoms/side_info_title.dart';
import 'package:flutter/material.dart';

class SideInfoArchiveTitle extends StatelessWidget {
  const SideInfoArchiveTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SideInfoTitle(
      title: 'アーカイブ',
    );
  }
}
