// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'opening_hours.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OpeningHours _$OpeningHoursFromJson(Map<String, dynamic> json) {
  return _OpeningHours.fromJson(json);
}

/// @nodoc
mixin _$OpeningHours {
  String get date => throw _privateConstructorUsedError;
  String get openString => throw _privateConstructorUsedError;
  String get day => throw _privateConstructorUsedError;
  bool get closed => throw _privateConstructorUsedError;
  bool get specialOpeningHours => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpeningHoursCopyWith<OpeningHours> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpeningHoursCopyWith<$Res> {
  factory $OpeningHoursCopyWith(OpeningHours value, $Res Function(OpeningHours) then) =
      _$OpeningHoursCopyWithImpl<$Res>;
  $Res call({String date, String openString, String day, bool closed, bool specialOpeningHours});
}

/// @nodoc
class _$OpeningHoursCopyWithImpl<$Res> implements $OpeningHoursCopyWith<$Res> {
  _$OpeningHoursCopyWithImpl(this._value, this._then);

  final OpeningHours _value;
  // ignore: unused_field
  final $Res Function(OpeningHours) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? openString = freezed,
    Object? day = freezed,
    Object? closed = freezed,
    Object? specialOpeningHours = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      openString: openString == freezed
          ? _value.openString
          : openString // ignore: cast_nullable_to_non_nullable
              as String,
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      closed: closed == freezed
          ? _value.closed
          : closed // ignore: cast_nullable_to_non_nullable
              as bool,
      specialOpeningHours: specialOpeningHours == freezed
          ? _value.specialOpeningHours
          : specialOpeningHours // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_OpeningHoursCopyWith<$Res> implements $OpeningHoursCopyWith<$Res> {
  factory _$$_OpeningHoursCopyWith(_$_OpeningHours value, $Res Function(_$_OpeningHours) then) =
      __$$_OpeningHoursCopyWithImpl<$Res>;
  @override
  $Res call({String date, String openString, String day, bool closed, bool specialOpeningHours});
}

/// @nodoc
class __$$_OpeningHoursCopyWithImpl<$Res> extends _$OpeningHoursCopyWithImpl<$Res>
    implements _$$_OpeningHoursCopyWith<$Res> {
  __$$_OpeningHoursCopyWithImpl(_$_OpeningHours _value, $Res Function(_$_OpeningHours) _then)
      : super(_value, (v) => _then(v as _$_OpeningHours));

  @override
  _$_OpeningHours get _value => super._value as _$_OpeningHours;

  @override
  $Res call({
    Object? date = freezed,
    Object? openString = freezed,
    Object? day = freezed,
    Object? closed = freezed,
    Object? specialOpeningHours = freezed,
  }) {
    return _then(_$_OpeningHours(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      openString: openString == freezed
          ? _value.openString
          : openString // ignore: cast_nullable_to_non_nullable
              as String,
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      closed: closed == freezed
          ? _value.closed
          : closed // ignore: cast_nullable_to_non_nullable
              as bool,
      specialOpeningHours: specialOpeningHours == freezed
          ? _value.specialOpeningHours
          : specialOpeningHours // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpeningHours extends _OpeningHours {
  const _$_OpeningHours(
      {required this.date,
      required this.openString,
      required this.day,
      required this.closed,
      required this.specialOpeningHours})
      : super._();

  factory _$_OpeningHours.fromJson(Map<String, dynamic> json) => _$$_OpeningHoursFromJson(json);

  @override
  final String date;
  @override
  final String openString;
  @override
  final String day;
  @override
  final bool closed;
  @override
  final bool specialOpeningHours;

  @override
  String toString() {
    return 'OpeningHours(date: $date, openString: $openString, day: $day, closed: $closed, specialOpeningHours: $specialOpeningHours)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpeningHours &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.openString, openString) &&
            const DeepCollectionEquality().equals(other.day, day) &&
            const DeepCollectionEquality().equals(other.closed, closed) &&
            const DeepCollectionEquality().equals(other.specialOpeningHours, specialOpeningHours));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(openString),
      const DeepCollectionEquality().hash(day),
      const DeepCollectionEquality().hash(closed),
      const DeepCollectionEquality().hash(specialOpeningHours));

  @JsonKey(ignore: true)
  @override
  _$$_OpeningHoursCopyWith<_$_OpeningHours> get copyWith =>
      __$$_OpeningHoursCopyWithImpl<_$_OpeningHours>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpeningHoursToJson(
      this,
    );
  }
}

abstract class _OpeningHours extends OpeningHours {
  const factory _OpeningHours(
      {required final String date,
      required final String openString,
      required final String day,
      required final bool closed,
      required final bool specialOpeningHours}) = _$_OpeningHours;
  const _OpeningHours._() : super._();

  factory _OpeningHours.fromJson(Map<String, dynamic> json) = _$_OpeningHours.fromJson;

  @override
  String get date;
  @override
  String get openString;
  @override
  String get day;
  @override
  bool get closed;
  @override
  bool get specialOpeningHours;
  @override
  @JsonKey(ignore: true)
  _$$_OpeningHoursCopyWith<_$_OpeningHours> get copyWith => throw _privateConstructorUsedError;
}
