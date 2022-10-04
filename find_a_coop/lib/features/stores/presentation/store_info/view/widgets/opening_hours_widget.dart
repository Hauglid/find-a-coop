import 'package:coopx_design_system/coopx_design_system.dart';
import 'package:find_a_coop/features/stores/models/opening_hours.dart';
import 'package:find_a_coop/l10n/l10n.dart';
import 'package:flutter/material.dart';

class OpeningHoursWidget extends StatelessWidget {
  const OpeningHoursWidget({required this.openingHours, super.key});

  final List<OpeningHours> openingHours;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        AText.body(context.l10n.openingHoursNext7Days),
        const Whitespace.height(PaddingSize.small),
        Wrap(
          runSpacing: PaddingSize.xsmall,
          children: [
            for (OpeningHours hours in openingHours)
              Row(
                children: [
                  Expanded(child: AText.caption(hours.day)),
                  Expanded(flex: 4, child: AText.caption(hours.openString)),
                ],
              ),
          ],
        ),
      ],
    );
  }
}
