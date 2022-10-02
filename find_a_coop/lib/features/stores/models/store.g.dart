// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Store _$$_StoreFromJson(Map<String, dynamic> json) => _$_Store(
      isEcommerce: json['IsEcommerce'] as bool,
      openNow: json['OpenNow'] as bool,
      lat: (json['Lat'] as num).toDouble(),
      lng: (json['Lng'] as num).toDouble(),
      distance: json['Distance'] as int,
      openingHours: (json['OpeningHours'] as List<dynamic>)
          .map((e) => OpeningHours.fromJson(e as Map<String, dynamic>))
          .toList(),
      specialOpeningHours: (json['SpecialOpeningHours'] as List<dynamic>)
          .map((e) => OpeningHours.fromJson(e as Map<String, dynamic>))
          .toList(),
      inStoreServices: (json['InStoreServices'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      address: json['Address'] as String,
      chain: json['Chain'] as String,
      chainClassName: json['ChainClassName'] as String,
      chainId: json['ChainId'] as String,
      chainImage: json['ChainImage'] as String,
      city: json['City'] as String,
      email: json['Email'] as String?,
      name: json['Name'] as String,
      newspaperUrl: json['NewspaperUrl'] as String,
      openingHoursToday: json['OpeningHoursToday'] as String,
      organizationNumber: json['OrganizationNumber'] as String,
      phone: json['Phone'] as String,
      sLag: json['SLag'] as String?,
      storeId: json['StoreId'] as String,
    );

Map<String, dynamic> _$$_StoreToJson(_$_Store instance) => <String, dynamic>{
      'IsEcommerce': instance.isEcommerce,
      'OpenNow': instance.openNow,
      'Lat': instance.lat,
      'Lng': instance.lng,
      'Distance': instance.distance,
      'OpeningHours': instance.openingHours.map((e) => e.toJson()).toList(),
      'SpecialOpeningHours':
          instance.specialOpeningHours.map((e) => e.toJson()).toList(),
      'InStoreServices': instance.inStoreServices,
      'Address': instance.address,
      'Chain': instance.chain,
      'ChainClassName': instance.chainClassName,
      'ChainId': instance.chainId,
      'ChainImage': instance.chainImage,
      'City': instance.city,
      'Email': instance.email,
      'Name': instance.name,
      'NewspaperUrl': instance.newspaperUrl,
      'OpeningHoursToday': instance.openingHoursToday,
      'OrganizationNumber': instance.organizationNumber,
      'Phone': instance.phone,
      'SLag': instance.sLag,
      'StoreId': instance.storeId,
    };
