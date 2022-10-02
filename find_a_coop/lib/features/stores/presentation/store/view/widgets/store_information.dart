import 'package:find_a_coop/features/stores/models/store.dart';
import 'package:flutter/material.dart';

class StoreInformation extends StatelessWidget {
  const StoreInformation({required this.store, super.key});

  final Store store;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(store.name),
        Text(store.chainId),
        Text(store.storeId),
        Text(store.chain),
        Text(store.phone),
      ],
    );
  }
}
