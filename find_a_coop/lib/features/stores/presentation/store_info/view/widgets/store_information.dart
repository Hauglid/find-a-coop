import 'package:coopx_design_system/coopx_design_system.dart';
import 'package:find_a_coop/features/stores/models/store.dart';
import 'package:find_a_coop/features/stores/presentation/store_info/view/widgets/widgets.dart';
import 'package:find_a_coop/l10n/l10n.dart';
import 'package:find_a_coop/utils/url_utils.dart';
import 'package:flutter/material.dart';

class StoreInformation extends StatelessWidget {
  const StoreInformation({required this.store, super.key});

  final Store store;

  Widget _email(BuildContext context) {
    return StoreInfoListTile(
      title: context.l10n.email,
      subtitle: store.email,
      icon: Icons.mail_outlined,
      onTap: () => UrlUtils.mailto(store.email!),
    );
  }

  Widget _phone(BuildContext context) {
    return StoreInfoListTile(
      title: context.l10n.phone,
      subtitle: store.phone,
      icon: Icons.phone_outlined,
      onTap: () => UrlUtils.call(store.phone),
    );
  }

  Widget _address(BuildContext context) {
    return StoreInfoListTile(
      title: context.l10n.address,
      subtitle: store.address,
      icon: Icons.place_outlined,
      onTap: () => UrlUtils.openMap(store.chain, store.name),
    );
  }

  Widget _showOffers(BuildContext context) {
    return StoreInfoListTile(
      title: context.l10n.showOffers,
      icon: Icons.newspaper,
      onTap: () => UrlUtils.openInternalBrowser(store.newspaperUrl),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Whitespace.height(PaddingSize.large),
            SizedBox(
              height: 200,
              child: StoreMap(
                latitude: store.lat,
                longitude: store.lng,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(PaddingSize.large),
              child: OpeningHoursWidget(openingHours: store.openingHours),
            ),
            _address(context),
            _showOffers(context),
            _phone(context),
            if (store.email != null) _email(context),
          ],
        ),
      ),
    );
  }
}
