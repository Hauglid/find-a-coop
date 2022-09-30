// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'opening_hours.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OpeningHours _$$_OpeningHoursFromJson(Map<String, dynamic> json) => _$_OpeningHours(
      date: json['date'] as String,
      openString: json['openString'] as String,
      day: json['day'] as String,
      closed: json['closed'] as bool,
      specialOpeningHours: json['specialOpeningHours'] as bool,
    );

Map<String, dynamic> _$$_OpeningHoursToJson(_$_OpeningHours instance) => <String, dynamic>{
      'date': instance.date,
      'openString': instance.openString,
      'day': instance.day,
      'closed': instance.closed,
      'specialOpeningHours': instance.specialOpeningHours,
    };
