import 'package:find_a_coop/features/stores/models/opening_hours.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'store.freezed.dart';
part 'store.g.dart';

@freezed
class Store with _$Store {
  const factory Store({
    required bool isEcommerce,
    required bool openNow,
    required double lat,
    required double lng,
    required int distance,
    required List<OpeningHours> openingHours,
    required List<OpeningHours> specialOpeningHours,
    required List<String> inStoreServices,
    required String address,
    required String chain,
    required String chainClassName,
    required String chainId,
    required String chainImage,
    required String city,
    String? email,
    required String name,
    required String newspaperUrl,
    required String openingHoursToday,
    required String organizationNumber,
    required String phone,
    String? sLag,
    required String storeId,
  }) = _Store;

  const Store._();

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);
}
