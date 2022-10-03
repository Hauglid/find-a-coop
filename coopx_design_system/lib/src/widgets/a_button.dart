import 'package:coopx_design_system/hauglid_design_system.dart';
import 'package:flutter/material.dart';

class AButton extends StatelessWidget {
  const AButton({
    Key? key,
    required this.title,
    this.disabled = false,
    this.busy = false,
    this.onTap,
    this.leading,
  })  : outline = false,
        super(key: key);

  const AButton.outline({
    required this.title,
    this.onTap,
    this.leading,
    this.disabled = false,
    this.busy = false,
    Key? key,
  })  : outline = true,
        super(key: key);

  final void Function()? onTap;
  final bool busy;
  final bool disabled;
  final Widget? leading;
  final bool outline;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 350),
        width: double.infinity,
        height: 48,
        alignment: Alignment.center,
        decoration: !outline
            ? BoxDecoration(
                color: !disabled ? Theme.of(context).primaryColor : AColor.grey,
                borderRadius: BorderRadius.circular(RadiusSize.small),
              )
            : BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(RadiusSize.small),
                border: Border.all(
                  color: AColor.blue,
                  width: 1,
                )),
        child: !busy
            ? Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (leading != null) ...[
                    leading!,
                    const SizedBox(width: 5),
                  ],
                  Text(
                    title,
                    style: bodyStyle.copyWith(
                      fontWeight: !outline ? FontWeight.bold : FontWeight.w400,
                      color: !outline ? Colors.white : AColor.blue,
                    ),
                  ),
                ],
              )
            : const CircularProgressIndicator(
                strokeWidth: 4,
                valueColor: AlwaysStoppedAnimation(Colors.white),
              ),
      ),
    );
  }
}
