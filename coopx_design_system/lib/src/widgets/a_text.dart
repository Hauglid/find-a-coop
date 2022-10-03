import 'package:coopx_design_system/src/shared/styles.dart';
import 'package:flutter/material.dart';

class AText extends StatelessWidget {
  /// Fontsize 16
  AText.body(this.text, {Color? color, Key? key})
      : style = bodyStyle.copyWith(color: color),
        super(key: key);

  /// Fontsize 18
  AText.bodyBig(this.text, {Color? color, Key? key})
      : style = bodyStyle.copyWith(color: color, fontSize: 18),
        super(key: key);

  /// Fontsize 14
  AText.bodySmall(this.text, {Color? color, Key? key})
      : style = bodyStyle.copyWith(color: color, fontSize: 14),
        super(key: key);

  /// Fontsize 12
  AText.caption(this.text, {Color? color, Key? key})
      : style = captionStyle.copyWith(color: color),
        super(key: key);

  /// Fontsize 34
  AText.headingOne(this.text, {Color? color, Key? key})
      : style = heading1Style.copyWith(color: color),
        super(key: key);

  /// Fontsize 28
  AText.headingTwo(this.text, {Color? color, Key? key})
      : style = heading2Style.copyWith(color: color),
        super(key: key);

  /// Fontsize 24
  AText.headingThree(this.text, {Color? color, Key? key})
      : style = heading3Style.copyWith(color: color),
        super(key: key);

  /// Fontsize 30
  AText.headline(this.text, {Color? color, Key? key})
      : style = headlineStyle.copyWith(color: color),
        super(key: key);

  /// Fontsize 20
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
