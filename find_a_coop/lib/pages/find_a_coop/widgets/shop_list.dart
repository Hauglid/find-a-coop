import 'package:coopx_design_system/hauglid_design_system.dart';
import 'package:find_a_coop/models/store.dart';
import 'package:flutter/material.dart';

class StoreList extends StatelessWidget {
  const StoreList({
    required this.shops,
    super.key,
  });

  final List<Store> shops;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: PaddingSize.large),
      separatorBuilder: (context, index) => const Whitespace.height(20),
      itemCount: shops.length,
      itemBuilder: (context, index) {
        final store = shops[index];

        return ListTile(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Theme.of(context).dividerColor),
            borderRadius: BorderRadius.circular(RadiusSize.large),
          ),
          title: Text(store.name),
          subtitle: Text(store.address),
        );
      },
    );
  }
}
