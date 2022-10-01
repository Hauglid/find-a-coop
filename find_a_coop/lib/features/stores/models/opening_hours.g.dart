// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'opening_hours.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OpeningHours _$$_OpeningHoursFromJson(Map<String, dynamic> json) =>
    _$_OpeningHours(
      date: json['Date'] as String,
      openString: json['OpenString'] as String,
      day: json['Day'] as String,
      closed: json['Closed'] as bool,
      specialOpeningHours: json['SpecialOpeningHours'] as bool,
    );

Map<String, dynamic> _$$_OpeningHoursToJson(_$_OpeningHours instance) =>
    <String, dynamic>{
      'Date': instance.date,
      'OpenString': instance.openString,
      'Day': instance.day,
      'Closed': instance.closed,
      'SpecialOpeningHours': instance.specialOpeningHours,
    };
