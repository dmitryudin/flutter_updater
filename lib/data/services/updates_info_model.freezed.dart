// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'updates_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdatesInfoModel _$UpdatesInfoModelFromJson(Map<String, dynamic> json) {
  return _UpdatesInfoModel.fromJson(json);
}

/// @nodoc
mixin _$UpdatesInfoModel {
  String get availible_version => throw _privateConstructorUsedError;
  String get url_for_update => throw _privateConstructorUsedError;

  /// Serializes this UpdatesInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdatesInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdatesInfoModelCopyWith<UpdatesInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatesInfoModelCopyWith<$Res> {
  factory $UpdatesInfoModelCopyWith(
          UpdatesInfoModel value, $Res Function(UpdatesInfoModel) then) =
      _$UpdatesInfoModelCopyWithImpl<$Res, UpdatesInfoModel>;
  @useResult
  $Res call({String availible_version, String url_for_update});
}

/// @nodoc
class _$UpdatesInfoModelCopyWithImpl<$Res, $Val extends UpdatesInfoModel>
    implements $UpdatesInfoModelCopyWith<$Res> {
  _$UpdatesInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdatesInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availible_version = null,
    Object? url_for_update = null,
  }) {
    return _then(_value.copyWith(
      availible_version: null == availible_version
          ? _value.availible_version
          : availible_version // ignore: cast_nullable_to_non_nullable
              as String,
      url_for_update: null == url_for_update
          ? _value.url_for_update
          : url_for_update // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdatesInfoModelImplCopyWith<$Res>
    implements $UpdatesInfoModelCopyWith<$Res> {
  factory _$$UpdatesInfoModelImplCopyWith(_$UpdatesInfoModelImpl value,
          $Res Function(_$UpdatesInfoModelImpl) then) =
      __$$UpdatesInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String availible_version, String url_for_update});
}

/// @nodoc
class __$$UpdatesInfoModelImplCopyWithImpl<$Res>
    extends _$UpdatesInfoModelCopyWithImpl<$Res, _$UpdatesInfoModelImpl>
    implements _$$UpdatesInfoModelImplCopyWith<$Res> {
  __$$UpdatesInfoModelImplCopyWithImpl(_$UpdatesInfoModelImpl _value,
      $Res Function(_$UpdatesInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdatesInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availible_version = null,
    Object? url_for_update = null,
  }) {
    return _then(_$UpdatesInfoModelImpl(
      availible_version: null == availible_version
          ? _value.availible_version
          : availible_version // ignore: cast_nullable_to_non_nullable
              as String,
      url_for_update: null == url_for_update
          ? _value.url_for_update
          : url_for_update // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdatesInfoModelImpl
    with DiagnosticableTreeMixin
    implements _UpdatesInfoModel {
  _$UpdatesInfoModelImpl(
      {required this.availible_version, required this.url_for_update});

  factory _$UpdatesInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdatesInfoModelImplFromJson(json);

  @override
  final String availible_version;
  @override
  final String url_for_update;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdatesInfoModel(availible_version: $availible_version, url_for_update: $url_for_update)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdatesInfoModel'))
      ..add(DiagnosticsProperty('availible_version', availible_version))
      ..add(DiagnosticsProperty('url_for_update', url_for_update));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatesInfoModelImpl &&
            (identical(other.availible_version, availible_version) ||
                other.availible_version == availible_version) &&
            (identical(other.url_for_update, url_for_update) ||
                other.url_for_update == url_for_update));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, availible_version, url_for_update);

  /// Create a copy of UpdatesInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatesInfoModelImplCopyWith<_$UpdatesInfoModelImpl> get copyWith =>
      __$$UpdatesInfoModelImplCopyWithImpl<_$UpdatesInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatesInfoModelImplToJson(
      this,
    );
  }
}

abstract class _UpdatesInfoModel implements UpdatesInfoModel {
  factory _UpdatesInfoModel(
      {required final String availible_version,
      required final String url_for_update}) = _$UpdatesInfoModelImpl;

  factory _UpdatesInfoModel.fromJson(Map<String, dynamic> json) =
      _$UpdatesInfoModelImpl.fromJson;

  @override
  String get availible_version;
  @override
  String get url_for_update;

  /// Create a copy of UpdatesInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatesInfoModelImplCopyWith<_$UpdatesInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
