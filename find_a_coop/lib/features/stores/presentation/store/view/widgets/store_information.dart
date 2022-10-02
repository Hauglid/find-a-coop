import 'package:find_a_coop/features/stores/models/store.dart';
import 'package:find_a_coop/utils/url_utils.dart';
import 'package:flutter/material.dart';

class StoreInformation extends StatelessWidget {
  const StoreInformation({required this.store, super.key});

  final Store store;

  ListTile _mail() {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Mail:'),
          Text(store.email!),
        ],
      ),
      onTap: () => UrlUtils.mailto(store.phone),
      leading: const Icon(Icons.mail),
      trailing: const Icon(Icons.chevron_right),
    );
  }

  ListTile _phone() {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Telefon:'),
          Text(store.phone),
        ],
      ),
      onTap: () => UrlUtils.call(store.phone),
      leading: const Icon(Icons.phone),
      trailing: const Icon(Icons.chevron_right),
    );
  }

  ListTile _address() {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Text(store.address)),
        ],
      ),
      onTap: () => UrlUtils.openMap(store.chain, store.address),
      leading: const Icon(Icons.map),
      trailing: const Icon(Icons.chevron_right),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Text(store.name),
          Text(store.chain),
          const Spacer(),
          _address(),
          _phone(),
          if (store.email != null) _mail(),
        ],
      ),
    );
  }
}
