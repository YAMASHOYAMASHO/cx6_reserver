// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReservationImpl _$$ReservationImplFromJson(Map<String, dynamic> json) =>
    _$ReservationImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      equipmentId: json['equipmentId'] as String,
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      status:
          $enumDecodeNullable(_$ReservationStatusEnumMap, json['status']) ??
          ReservationStatus.pending,
      purpose: json['purpose'] as String?,
      notes: json['notes'] as String?,
      userName: json['userName'] as String?,
      equipmentName: json['equipmentName'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ReservationImplToJson(_$ReservationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'equipmentId': instance.equipmentId,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'status': _$ReservationStatusEnumMap[instance.status]!,
      'purpose': instance.purpose,
      'notes': instance.notes,
      'userName': instance.userName,
      'equipmentName': instance.equipmentName,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

const _$ReservationStatusEnumMap = {
  ReservationStatus.pending: 'pending',
  ReservationStatus.confirmed: 'confirmed',
  ReservationStatus.cancelled: 'cancelled',
  ReservationStatus.completed: 'completed',
};
