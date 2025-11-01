// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reservation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Reservation _$ReservationFromJson(Map<String, dynamic> json) {
  return _Reservation.fromJson(json);
}

/// @nodoc
mixin _$Reservation {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get equipmentId => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  ReservationStatus get status => throw _privateConstructorUsedError;
  String? get purpose => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError; // UI表示用の追加情報(オプション)
  String? get userName => throw _privateConstructorUsedError;
  String? get equipmentName => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Reservation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Reservation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReservationCopyWith<Reservation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationCopyWith<$Res> {
  factory $ReservationCopyWith(
    Reservation value,
    $Res Function(Reservation) then,
  ) = _$ReservationCopyWithImpl<$Res, Reservation>;
  @useResult
  $Res call({
    String id,
    String userId,
    String equipmentId,
    DateTime startTime,
    DateTime endTime,
    ReservationStatus status,
    String? purpose,
    String? notes,
    String? userName,
    String? equipmentName,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class _$ReservationCopyWithImpl<$Res, $Val extends Reservation>
    implements $ReservationCopyWith<$Res> {
  _$ReservationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Reservation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? equipmentId = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? status = null,
    Object? purpose = freezed,
    Object? notes = freezed,
    Object? userName = freezed,
    Object? equipmentName = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            equipmentId: null == equipmentId
                ? _value.equipmentId
                : equipmentId // ignore: cast_nullable_to_non_nullable
                      as String,
            startTime: null == startTime
                ? _value.startTime
                : startTime // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            endTime: null == endTime
                ? _value.endTime
                : endTime // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as ReservationStatus,
            purpose: freezed == purpose
                ? _value.purpose
                : purpose // ignore: cast_nullable_to_non_nullable
                      as String?,
            notes: freezed == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                      as String?,
            userName: freezed == userName
                ? _value.userName
                : userName // ignore: cast_nullable_to_non_nullable
                      as String?,
            equipmentName: freezed == equipmentName
                ? _value.equipmentName
                : equipmentName // ignore: cast_nullable_to_non_nullable
                      as String?,
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
abstract class _$$ReservationImplCopyWith<$Res>
    implements $ReservationCopyWith<$Res> {
  factory _$$ReservationImplCopyWith(
    _$ReservationImpl value,
    $Res Function(_$ReservationImpl) then,
  ) = __$$ReservationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String userId,
    String equipmentId,
    DateTime startTime,
    DateTime endTime,
    ReservationStatus status,
    String? purpose,
    String? notes,
    String? userName,
    String? equipmentName,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class __$$ReservationImplCopyWithImpl<$Res>
    extends _$ReservationCopyWithImpl<$Res, _$ReservationImpl>
    implements _$$ReservationImplCopyWith<$Res> {
  __$$ReservationImplCopyWithImpl(
    _$ReservationImpl _value,
    $Res Function(_$ReservationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Reservation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? equipmentId = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? status = null,
    Object? purpose = freezed,
    Object? notes = freezed,
    Object? userName = freezed,
    Object? equipmentName = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$ReservationImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        equipmentId: null == equipmentId
            ? _value.equipmentId
            : equipmentId // ignore: cast_nullable_to_non_nullable
                  as String,
        startTime: null == startTime
            ? _value.startTime
            : startTime // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        endTime: null == endTime
            ? _value.endTime
            : endTime // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as ReservationStatus,
        purpose: freezed == purpose
            ? _value.purpose
            : purpose // ignore: cast_nullable_to_non_nullable
                  as String?,
        notes: freezed == notes
            ? _value.notes
            : notes // ignore: cast_nullable_to_non_nullable
                  as String?,
        userName: freezed == userName
            ? _value.userName
            : userName // ignore: cast_nullable_to_non_nullable
                  as String?,
        equipmentName: freezed == equipmentName
            ? _value.equipmentName
            : equipmentName // ignore: cast_nullable_to_non_nullable
                  as String?,
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
class _$ReservationImpl implements _Reservation {
  const _$ReservationImpl({
    required this.id,
    required this.userId,
    required this.equipmentId,
    required this.startTime,
    required this.endTime,
    this.status = ReservationStatus.pending,
    this.purpose,
    this.notes,
    this.userName,
    this.equipmentName,
    this.createdAt,
    this.updatedAt,
  });

  factory _$ReservationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReservationImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String equipmentId;
  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  @JsonKey()
  final ReservationStatus status;
  @override
  final String? purpose;
  @override
  final String? notes;
  // UI表示用の追加情報(オプション)
  @override
  final String? userName;
  @override
  final String? equipmentName;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Reservation(id: $id, userId: $userId, equipmentId: $equipmentId, startTime: $startTime, endTime: $endTime, status: $status, purpose: $purpose, notes: $notes, userName: $userName, equipmentName: $equipmentName, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReservationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.equipmentId, equipmentId) ||
                other.equipmentId == equipmentId) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.equipmentName, equipmentName) ||
                other.equipmentName == equipmentName) &&
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
    userId,
    equipmentId,
    startTime,
    endTime,
    status,
    purpose,
    notes,
    userName,
    equipmentName,
    createdAt,
    updatedAt,
  );

  /// Create a copy of Reservation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReservationImplCopyWith<_$ReservationImpl> get copyWith =>
      __$$ReservationImplCopyWithImpl<_$ReservationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReservationImplToJson(this);
  }
}

abstract class _Reservation implements Reservation {
  const factory _Reservation({
    required final String id,
    required final String userId,
    required final String equipmentId,
    required final DateTime startTime,
    required final DateTime endTime,
    final ReservationStatus status,
    final String? purpose,
    final String? notes,
    final String? userName,
    final String? equipmentName,
    final DateTime? createdAt,
    final DateTime? updatedAt,
  }) = _$ReservationImpl;

  factory _Reservation.fromJson(Map<String, dynamic> json) =
      _$ReservationImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get equipmentId;
  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  ReservationStatus get status;
  @override
  String? get purpose;
  @override
  String? get notes; // UI表示用の追加情報(オプション)
  @override
  String? get userName;
  @override
  String? get equipmentName;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of Reservation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReservationImplCopyWith<_$ReservationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
