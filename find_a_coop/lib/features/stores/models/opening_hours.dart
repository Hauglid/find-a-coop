import 'package:freezed_annotation/freezed_annotation.dart';
part 'opening_hours.freezed.dart';
part 'opening_hours.g.dart';

@freezed
class OpeningHours with _$OpeningHours {
  const factory OpeningHours({
    required String date,
    required String openString,
    required String day,
    required bool closed,
    required bool specialOpeningHours,
  }) = _OpeningHours;

  const OpeningHours._();

  factory OpeningHours.fromJson(Map<String, dynamic> json) => _$OpeningHoursFromJson(json);
}
