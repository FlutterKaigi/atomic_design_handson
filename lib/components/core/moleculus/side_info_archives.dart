import 'package:atomic_design_handson/components/core/atoms/side_info_archive_list.dart';
import 'package:atomic_design_handson/components/core/atoms/side_info_archive_title.dart';
import 'package:atomic_design_handson/components/core/atoms/side_info_none_archives.dart';
import 'package:flutter/material.dart';

class SideInfoArchives extends StatelessWidget {
  const SideInfoArchives({Key? key, this.archives}) : super(key: key);
  final List? archives;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 0, bottom: 0, right: 0, left: 0),
          child: SideInfoArchiveTitle(),
        ),
        Container(
          padding: const EdgeInsets.only(
            top: 10,
            bottom: 0,
            right: 0,
            left: 0,
          ),
          child: createArchiveList(),
        ),
      ],
    );
  }

  Widget createArchiveList() {
    if (archives!.isEmpty) {
      return SideInfoNoneArchive();
    } else {
      final archivesTitle = <Widget>[];
      for (final element in archives!) {
        final Widget widget = SideInfoArchiveList(archive: element);
        archivesTitle.add(widget);
      }

      return Column(children: archivesTitle);
    }
  }
}
