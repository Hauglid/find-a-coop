import 'package:coopx_design_system/src/shared/constants.dart';
import 'package:flutter/material.dart';

class ChainImage extends StatelessWidget {
  const ChainImage({required this.chainId, super.key});

  final String chainId;

  String getImagePathFromId(String id) {
    switch (id) {
      case Chain.bygg:
        return 'assets/images/bygg.png';
      case Chain.byggmix:
        return 'assets/images/byggmix.png';
      case Chain.elektro:
        return 'assets/images/elektro.png';
      case Chain.extra:
        return 'assets/images/extra.png';
      case Chain.marked:
        return 'assets/images/marked.png';
      case Chain.matkroken:
        return 'assets/images/matkroken.png';
      case Chain.mega:
        return 'assets/images/mega.png';
      case Chain.obs:
        return 'assets/images/obs.png';
      case Chain.prix:
        return 'assets/images/prix.png';
      case Chain.coop:
      default:
        return 'assets/images/coop.png';
    }
  }

  @override
  Widget build(BuildContext context) {
    final path = getImagePathFromId(chainId);
    return Image.asset(
      path,
      package: 'coopx_design_system',
    );
  }
}
