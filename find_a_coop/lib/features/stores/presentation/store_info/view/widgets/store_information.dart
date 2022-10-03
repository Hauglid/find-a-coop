import 'package:coopx_design_system/coopx_design_system.dart';
import 'package:find_a_coop/features/stores/models/opening_hours.dart';
import 'package:find_a_coop/features/stores/models/store.dart';
import 'package:find_a_coop/features/stores/presentation/widgets/store_map.dart';
import 'package:find_a_coop/utils/url_utils.dart';
import 'package:flutter/material.dart';

class StoreInformation extends StatelessWidget {
  const StoreInformation({required this.store, super.key});

  final Store store;

  Widget _listTile({
    required IconData icon,
    required String title,
    required String subtitle,
    required void Function()? onTap,
  }) {
    return ListTile(
      leading: Icon(icon),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
      title: AText.body(title),
      subtitle: AText.caption(subtitle),
    );
  }

  Widget _mail() {
    return _listTile(
      title: 'Mail',
      subtitle: store.email!,
      icon: Icons.mail,
      onTap: () => UrlUtils.mailto(store.email!),
    );
  }

  Widget _phone() {
    return _listTile(
      title: 'Telefon',
      subtitle: store.phone,
      icon: Icons.phone,
      onTap: () => UrlUtils.call(store.phone),
    );
  }

  Widget _address() {
    return _listTile(
      title: 'Adresse',
      subtitle: store.address,
      icon: Icons.map,
      onTap: () => UrlUtils.openMap(store.chain, store.name),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Whitespace.height(PaddingSize.large),
          SizedBox(
            height: 200,
            child: StoreMap(
              latitude: store.lat,
              longitude: store.lng,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(PaddingSize.large),
              child: ListView(
                shrinkWrap: true,
                children: [
                  AText.body('Åpningstider de neste 7 dagene'),
                  for (OpeningHours hours in store.openingHours) AText.caption('${hours.day} ${hours.openString}'),
                ],
              ),
            ),
          ),
          _address(),
          _phone(),
          if (store.email != null) _mail(),
        ],
      ),
    );
  }
}
