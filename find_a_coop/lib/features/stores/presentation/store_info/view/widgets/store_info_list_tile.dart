import 'package:coopx_design_system/coopx_design_system.dart';
import 'package:flutter/material.dart';

class StoreInfoListTile extends StatelessWidget {
  const StoreInfoListTile({
    required this.icon,
    required this.title,
    this.subtitle,
    required this.onTap,
    super.key,
  });

  final IconData icon;
  final String title;
  final String? subtitle;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      visualDensity: VisualDensity.compact,
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
      title: AText.bodySmall(title),
      subtitle: subtitle != null ? AText.caption(subtitle!) : null,
    );
  }
}
