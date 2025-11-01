// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'equipment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Equipment _$EquipmentFromJson(Map<String, dynamic> json) {
  return _Equipment.fromJson(json);
}

/// @nodoc
mixin _$Equipment {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  EquipmentStatus get status => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  Map<String, dynamic>? get specifications =>
      throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Equipment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Equipment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EquipmentCopyWith<Equipment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquipmentCopyWith<$Res> {
  factory $EquipmentCopyWith(Equipment value, $Res Function(Equipment) then) =
      _$EquipmentCopyWithImpl<$Res, Equipment>;
  @useResult
  $Res call({
    String id,
    String name,
    String description,
    EquipmentStatus status,
    String? imageUrl,
    String? location,
    Map<String, dynamic>? specifications,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class _$EquipmentCopyWithImpl<$Res, $Val extends Equipment>
    implements $EquipmentCopyWith<$Res> {
  _$EquipmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Equipment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? status = null,
    Object? imageUrl = freezed,
    Object? location = freezed,
    Object? specifications = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as EquipmentStatus,
            imageUrl: freezed == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            location: freezed == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as String?,
            specifications: freezed == specifications
                ? _value.specifications
                : specifications // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EquipmentImplCopyWith<$Res>
    implements $EquipmentCopyWith<$Res> {
  factory _$$EquipmentImplCopyWith(
    _$EquipmentImpl value,
    $Res Function(_$EquipmentImpl) then,
  ) = __$$EquipmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String description,
    EquipmentStatus status,
    String? imageUrl,
    String? location,
    Map<String, dynamic>? specifications,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class __$$EquipmentImplCopyWithImpl<$Res>
    extends _$EquipmentCopyWithImpl<$Res, _$EquipmentImpl>
    implements _$$EquipmentImplCopyWith<$Res> {
  __$$EquipmentImplCopyWithImpl(
    _$EquipmentImpl _value,
    $Res Function(_$EquipmentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Equipment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? status = null,
    Object? imageUrl = freezed,
    Object? location = freezed,
    Object? specifications = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$EquipmentImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as EquipmentStatus,
        imageUrl: freezed == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        location: freezed == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as String?,
        specifications: freezed == specifications
            ? _value._specifications
            : specifications // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EquipmentImpl implements _Equipment {
  const _$EquipmentImpl({
    required this.id,
    required this.name,
    required this.description,
    this.status = EquipmentStatus.available,
    this.imageUrl,
    this.location,
    final Map<String, dynamic>? specifications,
    this.createdAt,
    this.updatedAt,
  }) : _specifications = specifications;

  factory _$EquipmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$EquipmentImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  @JsonKey()
  final EquipmentStatus status;
  @override
  final String? imageUrl;
  @override
  final String? location;
  final Map<String, dynamic>? _specifications;
  @override
  Map<String, dynamic>? get specifications {
    final value = _specifications;
    if (value == null) return null;
    if (_specifications is EqualUnmodifiableMapView) return _specifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Equipment(id: $id, name: $name, description: $description, status: $status, imageUrl: $imageUrl, location: $location, specifications: $specifications, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EquipmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality().equals(
              other._specifications,
              _specifications,
            ) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    description,
    status,
    imageUrl,
    location,
    const DeepCollectionEquality().hash(_specifications),
    createdAt,
    updatedAt,
  );

  /// Create a copy of Equipment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EquipmentImplCopyWith<_$EquipmentImpl> get copyWith =>
      __$$EquipmentImplCopyWithImpl<_$EquipmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EquipmentImplToJson(this);
  }
}

abstract class _Equipment implements Equipment {
  const factory _Equipment({
    required final String id,
    required final String name,
    required final String description,
    final EquipmentStatus status,
    final String? imageUrl,
    final String? location,
    final Map<String, dynamic>? specifications,
    final DateTime? createdAt,
    final DateTime? updatedAt,
  }) = _$EquipmentImpl;

  factory _Equipment.fromJson(Map<String, dynamic> json) =
      _$EquipmentImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  EquipmentStatus get status;
  @override
  String? get imageUrl;
  @override
  String? get location;
  @override
  Map<String, dynamic>? get specifications;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of Equipment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EquipmentImplCopyWith<_$EquipmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
