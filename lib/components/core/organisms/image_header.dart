import 'package:atomic_design_handson/components/core/atoms/header_image.dart';
import 'package:flutter/material.dart';

class ImageHeaderOrganisms extends StatelessWidget {
  const ImageHeaderOrganisms({Key? key, this.data}) : super(key: key);
  final Map? data;

  @override
  Widget build(BuildContext context) {
    return HeaderImage(imagePath: data!['imagePath']);
  }
}
