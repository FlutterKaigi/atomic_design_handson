import 'package:atomic_design_handson/components/core/atoms/profile_title.dart';
import 'package:atomic_design_handson/components/core/atoms/profile_user_name.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key, this.userName}) : super(key: key);
  final String? userName;

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
          child: ProfileTitle(),
        ),
        Container(
          padding: const EdgeInsets.only(
            top: 10,
            bottom: 0,
            right: 0,
            left: 0,
          ),
          child: ProfileUserName(
            userName: userName!,
          ),
        ),
      ],
    );
  }
}
