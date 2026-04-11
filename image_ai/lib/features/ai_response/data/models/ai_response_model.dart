import 'package:image_ai/features/ai_response/domain/entities/ai_response_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'ai_response_model.freezed.dart';
part 'ai_response_model.g.dart';

@freezed
abstract class AiResponseModel with _$AiResponseModel {
  const factory AiResponseModel({
    required int id,
    required String firstName,
    required String lastName,
    
  }) = _AiResponseModel;

  factory AiResponseModel.fromJson(Map<String, Object?> json) => _$AiResponseModelFromJson(json);
}



extension AiResponseModelMapper on AiResponseModel {
  AiResponseEntity toEntity() {
    return AiResponseEntity(id: id, firstName: firstName, lastName: lastName);
  }
  }
