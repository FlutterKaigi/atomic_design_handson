import 'package:atomic_design_handson/components/common/atoms/side_info_link.dart';
import 'package:flutter/material.dart';

class ProfileUserName extends StatelessWidget {
  const ProfileUserName({Key? key, this.userName}) : super(key: key);
  final String? userName;

  @override
  Widget build(BuildContext context) {
    return SideInfoLink(text: userName!);
  }
}
