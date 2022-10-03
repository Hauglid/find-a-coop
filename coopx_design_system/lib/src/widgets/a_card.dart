import 'package:flutter/material.dart';
import 'package:coopx_design_system/src/shared/constants.dart';

class ACard extends StatelessWidget {
  const ACard({
    Key? key,
    required this.child,
    this.onTap,
    this.color,
    this.padding = const EdgeInsets.all(PaddingSize.large),
    this.margin = EdgeInsets.zero,
    this.disabled = false,
    this.radiusSize = RadiusSize.small,
    this.borderColor = Colors.transparent,
  }) : super(key: key);

  final void Function()? onTap;
  final Color borderColor;
  final Widget child;
  final Color? color;
  final bool disabled;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final double radiusSize;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        margin: margin,
        clipBehavior: Clip.hardEdge,
        foregroundDecoration: BoxDecoration(
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(radiusSize),
        ),
        decoration: BoxDecoration(
          color: color ?? Colors.white,
          borderRadius: BorderRadius.circular(radiusSize),
        ),
        child: InkWell(
          onTap: disabled ? null : onTap,
          child: Padding(
            padding: padding,
            child: child,
          ),
        ),
      ),
    );
  }
}
