import 'package:atomic_design_handson/components/core/moleculus/profile.dart';
import 'package:atomic_design_handson/components/core/moleculus/side_info_archives.dart';
import 'package:atomic_design_handson/components/core/moleculus/side_info_search.dart';
import 'package:flutter/material.dart';

class SideInfoBodyOrganisms extends StatelessWidget {
  const SideInfoBodyOrganisms({Key? key, this.data}) : super(key: key);
  final Map? data;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(
            top: 0,
            bottom: 20,
            right: 0,
            left: 0,
          ),
          child: Profile(userName: data!['userName']),
        ),
        Container(
          padding: const EdgeInsets.only(
            top: 10,
            bottom: 20,
            right: 0,
            left: 0,
          ),
          child: SideInfoSearch(),
        ),
        Container(
          padding: const EdgeInsets.only(
            top: 10,
            bottom: 20,
            right: 0,
            left: 0,
          ),
          child: SideInfoArchives(archives: data!['archives']),
        ),
      ],
    );
  }
}
