import 'package:coopx_design_system/src/shared/styles.dart';
import 'package:flutter/material.dart';

class AText extends StatelessWidget {
  AText.body(this.text, {Color? color, Key? key})
      : style = bodyStyle.copyWith(color: color),
        super(key: key);

  AText.caption(this.text, {Color? color, Key? key})
      : style = captionStyle.copyWith(color: color),
        super(key: key);

  AText.headingOne(this.text, {Color? color, Key? key})
      : style = heading1Style.copyWith(color: color),
        super(key: key);

  AText.headingThree(this.text, {Color? color, Key? key})
      : style = heading3Style.copyWith(color: color),
        super(key: key);

  AText.headingTwo(this.text, {Color? color, Key? key})
      : style = heading2Style.copyWith(color: color),
        super(key: key);

  AText.headline(this.text, {Color? color, Key? key})
      : style = headlineStyle.copyWith(color: color),
        super(key: key);

  AText.subheading(this.text, {Color? color, Key? key})
      : style = subheadingStyle.copyWith(color: color),
        super(key: key);

  final TextStyle style;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
