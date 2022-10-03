import 'package:coopx_design_system/hauglid_design_system.dart';
import 'package:find_a_coop/core/router/routes.dart';
import 'package:find_a_coop/features/stores/models/store.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
          title: Text('${store.chain} - ${store.name}'),
          subtitle: Text(store.address),
          trailing: store.distance > 0 ? Text('${store.distance} m') : null,
          onTap: () {
            final storeName = '${store.name}-${store.storeId}';
            final path = '/${BaseRoutes.butikker}/${store.chain}/$storeName'.toLowerCase();
            context.go(path);
          },
        );
      },
    );
  }
}
