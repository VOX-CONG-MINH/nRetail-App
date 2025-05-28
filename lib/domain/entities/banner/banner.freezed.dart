// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BannerEntity _$BannerEntityFromJson(Map<String, dynamic> json) {
  return _BannerEntity.fromJson(json);
}

/// @nodoc
mixin _$BannerEntity {
  String get id => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  /// Serializes this BannerEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BannerEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BannerEntityCopyWith<BannerEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerEntityCopyWith<$Res> {
  factory $BannerEntityCopyWith(
    BannerEntity value,
    $Res Function(BannerEntity) then,
  ) = _$BannerEntityCopyWithImpl<$Res, BannerEntity>;
  @useResult
  $Res call({String id, String imageUrl});
}

/// @nodoc
class _$BannerEntityCopyWithImpl<$Res, $Val extends BannerEntity>
    implements $BannerEntityCopyWith<$Res> {
  _$BannerEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BannerEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? imageUrl = null}) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            imageUrl:
                null == imageUrl
                    ? _value.imageUrl
                    : imageUrl // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BannerEntityImplCopyWith<$Res>
    implements $BannerEntityCopyWith<$Res> {
  factory _$$BannerEntityImplCopyWith(
    _$BannerEntityImpl value,
    $Res Function(_$BannerEntityImpl) then,
  ) = __$$BannerEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String imageUrl});
}

/// @nodoc
class __$$BannerEntityImplCopyWithImpl<$Res>
    extends _$BannerEntityCopyWithImpl<$Res, _$BannerEntityImpl>
    implements _$$BannerEntityImplCopyWith<$Res> {
  __$$BannerEntityImplCopyWithImpl(
    _$BannerEntityImpl _value,
    $Res Function(_$BannerEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BannerEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? imageUrl = null}) {
    return _then(
      _$BannerEntityImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        imageUrl:
            null == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BannerEntityImpl implements _BannerEntity {
  const _$BannerEntityImpl({this.id = '', this.imageUrl = ''});

  factory _$BannerEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerEntityImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String imageUrl;

  @override
  String toString() {
    return 'BannerEntity(id: $id, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, imageUrl);

  /// Create a copy of BannerEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerEntityImplCopyWith<_$BannerEntityImpl> get copyWith =>
      __$$BannerEntityImplCopyWithImpl<_$BannerEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerEntityImplToJson(this);
  }
}

abstract class _BannerEntity implements BannerEntity {
  const factory _BannerEntity({final String id, final String imageUrl}) =
      _$BannerEntityImpl;

  factory _BannerEntity.fromJson(Map<String, dynamic> json) =
      _$BannerEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get imageUrl;

  /// Create a copy of BannerEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BannerEntityImplCopyWith<_$BannerEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
