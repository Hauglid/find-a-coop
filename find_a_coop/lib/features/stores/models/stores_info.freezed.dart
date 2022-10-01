// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stores_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoresInfo _$StoresInfoFromJson(Map<String, dynamic> json) {
  return _StoresInfo.fromJson(json);
}

/// @nodoc
mixin _$StoresInfo {
  List<Store> get stores => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoresInfoCopyWith<StoresInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoresInfoCopyWith<$Res> {
  factory $StoresInfoCopyWith(
          StoresInfo value, $Res Function(StoresInfo) then) =
      _$StoresInfoCopyWithImpl<$Res>;
  $Res call({List<Store> stores});
}

/// @nodoc
class _$StoresInfoCopyWithImpl<$Res> implements $StoresInfoCopyWith<$Res> {
  _$StoresInfoCopyWithImpl(this._value, this._then);

  final StoresInfo _value;
  // ignore: unused_field
  final $Res Function(StoresInfo) _then;

  @override
  $Res call({
    Object? stores = freezed,
  }) {
    return _then(_value.copyWith(
      stores: stores == freezed
          ? _value.stores
          : stores // ignore: cast_nullable_to_non_nullable
              as List<Store>,
    ));
  }
}

/// @nodoc
abstract class _$$_StoresInfoCopyWith<$Res>
    implements $StoresInfoCopyWith<$Res> {
  factory _$$_StoresInfoCopyWith(
          _$_StoresInfo value, $Res Function(_$_StoresInfo) then) =
      __$$_StoresInfoCopyWithImpl<$Res>;
  @override
  $Res call({List<Store> stores});
}

/// @nodoc
class __$$_StoresInfoCopyWithImpl<$Res> extends _$StoresInfoCopyWithImpl<$Res>
    implements _$$_StoresInfoCopyWith<$Res> {
  __$$_StoresInfoCopyWithImpl(
      _$_StoresInfo _value, $Res Function(_$_StoresInfo) _then)
      : super(_value, (v) => _then(v as _$_StoresInfo));

  @override
  _$_StoresInfo get _value => super._value as _$_StoresInfo;

  @override
  $Res call({
    Object? stores = freezed,
  }) {
    return _then(_$_StoresInfo(
      stores: stores == freezed
          ? _value._stores
          : stores // ignore: cast_nullable_to_non_nullable
              as List<Store>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StoresInfo extends _StoresInfo {
  const _$_StoresInfo({required final List<Store> stores})
      : _stores = stores,
        super._();

  factory _$_StoresInfo.fromJson(Map<String, dynamic> json) =>
      _$$_StoresInfoFromJson(json);

  final List<Store> _stores;
  @override
  List<Store> get stores {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stores);
  }

  @override
  String toString() {
    return 'StoresInfo(stores: $stores)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoresInfo &&
            const DeepCollectionEquality().equals(other._stores, _stores));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stores));

  @JsonKey(ignore: true)
  @override
  _$$_StoresInfoCopyWith<_$_StoresInfo> get copyWith =>
      __$$_StoresInfoCopyWithImpl<_$_StoresInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoresInfoToJson(
      this,
    );
  }
}

abstract class _StoresInfo extends StoresInfo {
  const factory _StoresInfo({required final List<Store> stores}) =
      _$_StoresInfo;
  const _StoresInfo._() : super._();

  factory _StoresInfo.fromJson(Map<String, dynamic> json) =
      _$_StoresInfo.fromJson;

  @override
  List<Store> get stores;
  @override
  @JsonKey(ignore: true)
  _$$_StoresInfoCopyWith<_$_StoresInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
