import 'package:flutter/material.dart';

class HeaderImage extends StatelessWidget {
  const HeaderImage({Key? key, this.imagePath}) : super(key: key);
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath!,
      width: 4000,
      height: 500,
      fit: BoxFit.none,
    );
  }
}
