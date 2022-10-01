// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stores_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoresInfo _$$_StoresInfoFromJson(Map<String, dynamic> json) =>
    _$_StoresInfo(
      stores: (json['Stores'] as List<dynamic>)
          .map((e) => Store.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StoresInfoToJson(_$_StoresInfo instance) =>
    <String, dynamic>{
      'Stores': instance.stores.map((e) => e.toJson()).toList(),
    };
