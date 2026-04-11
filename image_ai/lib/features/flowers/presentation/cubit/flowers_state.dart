import 'package:equatable/equatable.dart';
import 'package:image_ai/features/flowers/domain/entities/flowers_entity.dart';

abstract class FlowersState extends Equatable {
  const FlowersState();

  @override
  List<Object?> get props => [];
}

class FlowersInitialState extends FlowersState {}

class FlowersSuccessState extends FlowersState {
  final List<FlowersEntity> flowers;

  const FlowersSuccessState({required this.flowers});
}

class FlowersErrorState extends FlowersState {
  final String message;
  const FlowersErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}

