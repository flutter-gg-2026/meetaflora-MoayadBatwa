import 'package:equatable/equatable.dart';

class FlowersEntity extends Equatable {
  final int id;
  final String firstName;
  final String lastName;

  const FlowersEntity({
    required this.id,
    required this.firstName,
    required this.lastName,
  });

  @override
  List<Object?> get props => [firstName, lastName, id];
}
