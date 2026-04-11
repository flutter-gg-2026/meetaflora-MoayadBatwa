// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flowers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FlowersModel _$FlowersModelFromJson(Map<String, dynamic> json) =>
    _FlowersModel(
      id: (json['id'] as num).toInt(),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$FlowersModelToJson(_FlowersModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
