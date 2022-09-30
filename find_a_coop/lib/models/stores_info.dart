import 'package:find_a_coop/models/store.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'stores_info.freezed.dart';
part 'stores_info.g.dart';

@freezed
class StoresInfo with _$StoresInfo {
  const factory StoresInfo({
    required List<Store> stores,
  }) = _StoresInfo;

  const StoresInfo._();

  factory StoresInfo.fromJson(Map<String, dynamic> json) => _$StoresInfoFromJson(json);
}
