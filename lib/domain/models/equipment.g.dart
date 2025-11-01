// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EquipmentImpl _$$EquipmentImplFromJson(Map<String, dynamic> json) =>
    _$EquipmentImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      status:
          $enumDecodeNullable(_$EquipmentStatusEnumMap, json['status']) ??
          EquipmentStatus.available,
      imageUrl: json['imageUrl'] as String?,
      location: json['location'] as String?,
      specifications: json['specifications'] as Map<String, dynamic>?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$EquipmentImplToJson(_$EquipmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'status': _$EquipmentStatusEnumMap[instance.status]!,
      'imageUrl': instance.imageUrl,
      'location': instance.location,
      'specifications': instance.specifications,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

const _$EquipmentStatusEnumMap = {
  EquipmentStatus.available: 'available',
  EquipmentStatus.maintenance: 'maintenance',
  EquipmentStatus.unavailable: 'unavailable',
};
