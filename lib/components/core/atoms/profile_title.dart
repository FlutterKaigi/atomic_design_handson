import '../../../components/common/atoms/side_info_title.dart';
import 'package:flutter/material.dart';

class ProfileTitle extends StatelessWidget {
  const ProfileTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SideInfoTitle(
      title: 'プロフィール',
    );
  }
}
