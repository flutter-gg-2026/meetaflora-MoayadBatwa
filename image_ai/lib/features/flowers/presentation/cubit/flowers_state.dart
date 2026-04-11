import 'package:equatable/equatable.dart';

abstract class FlowersState extends Equatable {
  const FlowersState();

  @override
  List<Object?> get props => [];
}

class FlowersInitialState extends FlowersState {}
class FlowersSuccessState extends FlowersState {}

class FlowersErrorState extends FlowersState {
  final String message;
  const FlowersErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}

