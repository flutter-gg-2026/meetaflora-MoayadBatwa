import 'package:image_ai/features/flowers/domain/entities/flowers_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'flowers_model.freezed.dart';
part 'flowers_model.g.dart';

@freezed
abstract class FlowersModel with _$FlowersModel {
  const factory FlowersModel({
    required String path,
    
  }) = _FlowersModel;

  factory FlowersModel.fromJson(Map<String, Object?> json) => _$FlowersModelFromJson(json);
}



extension FlowersModelMapper on FlowersModel {
  FlowersEntity toEntity() {
    return FlowersEntity(path: path,);
  }
  }
