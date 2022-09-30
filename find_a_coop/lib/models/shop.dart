import 'package:find_a_coop/models/opening_hours.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'shop.freezed.dart';
part 'shop.g.dart';

@freezed
class Shop with _$Shop {
  const factory Shop({
    required String storeId,
    required String name,
    required String chain,
    required String chainClassName,
    required String chainId,
    required bool isEcommerce,
    required String newspaperUrl,
    required String chainImage,
    required List<String> inStoreServices,
    required double lat,
    required double lng,
    required String openingHoursToday,
    required bool openNow,
    required String phone,
    required String address,
    required String city,
    required int distance,
    required String email,
    required String sLag,
    required String organizationNumber,
    required List<OpeningHours> specialOpeningHours,
    required List<OpeningHours> openingHours,
  }) = _Shop;

  const Shop._();

  factory Shop.fromJson(Map<String, dynamic> json) => _$ShopFromJson(json);
}
