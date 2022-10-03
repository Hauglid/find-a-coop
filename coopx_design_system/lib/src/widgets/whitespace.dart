import 'package:flutter/material.dart';

class Whitespace extends StatelessWidget {
  const Whitespace.height(this.height, {Key? key})
      : width = 0,
        super(key: key);

  const Whitespace.width(this.width, {Key? key})
      : height = 0,
        super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
