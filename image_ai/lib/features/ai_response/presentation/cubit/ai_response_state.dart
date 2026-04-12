import 'package:equatable/equatable.dart';

abstract class AiResponseState extends Equatable {
  const AiResponseState();

  @override
  List<Object?> get props => [];
}

class AiResponseInitialState extends AiResponseState {}

class AiResponseLoadingState extends AiResponseState {}

class AiResponseSuccessState extends AiResponseState {
  final String aiResponse;

  const AiResponseSuccessState({required this.aiResponse});
}

class AiResponseErrorState extends AiResponseState {
  final String message;
  const AiResponseErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}

