// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AiResponseModel _$AiResponseModelFromJson(Map<String, dynamic> json) =>
    _AiResponseModel(
      id: (json['id'] as num).toInt(),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$AiResponseModelToJson(_AiResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
