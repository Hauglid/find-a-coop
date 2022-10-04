import 'package:coopx_design_system/coopx_design_system.dart';
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
        final int distance = store.distance.toInt();

        return ListTile(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Theme.of(context).dividerColor),
            borderRadius: BorderRadius.circular(RadiusSize.large),
          ),
          title: AText.body('${store.chain} - ${store.name}'),
          subtitle: AText.caption(store.address),
          leading: SizedBox(width: 40, child: Center(child: ChainImage(chainId: store.chainId))),
          trailing: distance > 0 ? AText.caption('$distance m') : null,
          onTap: () {
            final storeName = Uri.encodeComponent('${store.name}-${store.storeId}');
            final path = '/${BaseRoutes.butikker}/${store.chain}/$storeName'.toLowerCase();
            context.go(path);
          },
        );
      },
    );
  }
}
