import 'package:flutter/material.dart';

import 'package:lines_test/core/theme/styles.dart';

class CustomImage extends StatelessWidget {
  final BoxFit? fit;
  final String? path;
  final double? height;
  final double? width;
  final BorderRadius? borderRadius;

  const CustomImage(
      {super.key,
      this.fit = BoxFit.fill,
      this.height,
      this.width,
      this.path = "",
      this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ClipRRect(
          borderRadius: borderRadius ?? Layouts.kDefaultBorderRadius,
          child: Image.asset(
            path!,
            fit: fit,
          )),
    );
  }
}
