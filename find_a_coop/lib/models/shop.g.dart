// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Shop _$$_ShopFromJson(Map<String, dynamic> json) => _$_Shop(
      storeId: json['storeId'] as String,
      name: json['name'] as String,
      chain: json['chain'] as String,
      chainClassName: json['chainClassName'] as String,
      chainId: json['chainId'] as String,
      isEcommerce: json['isEcommerce'] as bool,
      newspaperUrl: json['newspaperUrl'] as String,
      chainImage: json['chainImage'] as String,
      inStoreServices: (json['inStoreServices'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      openingHoursToday: json['openingHoursToday'] as String,
      openNow: json['openNow'] as bool,
      phone: json['phone'] as String,
      address: json['address'] as String,
      city: json['city'] as String,
      distance: json['distance'] as int,
      email: json['email'] as String,
      sLag: json['sLag'] as String,
      organizationNumber: json['organizationNumber'] as String,
      specialOpeningHours: (json['specialOpeningHours'] as List<dynamic>)
          .map((e) => OpeningHours.fromJson(e as Map<String, dynamic>))
          .toList(),
      openingHours: (json['openingHours'] as List<dynamic>)
          .map((e) => OpeningHours.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ShopToJson(_$_Shop instance) => <String, dynamic>{
      'storeId': instance.storeId,
      'name': instance.name,
      'chain': instance.chain,
      'chainClassName': instance.chainClassName,
      'chainId': instance.chainId,
      'isEcommerce': instance.isEcommerce,
      'newspaperUrl': instance.newspaperUrl,
      'chainImage': instance.chainImage,
      'inStoreServices': instance.inStoreServices,
      'lat': instance.lat,
      'lng': instance.lng,
      'openingHoursToday': instance.openingHoursToday,
      'openNow': instance.openNow,
      'phone': instance.phone,
      'address': instance.address,
      'city': instance.city,
      'distance': instance.distance,
      'email': instance.email,
      'sLag': instance.sLag,
      'organizationNumber': instance.organizationNumber,
      'specialOpeningHours': instance.specialOpeningHours,
      'openingHours': instance.openingHours,
    };
