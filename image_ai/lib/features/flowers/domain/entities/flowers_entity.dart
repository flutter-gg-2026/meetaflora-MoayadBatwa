import 'package:equatable/equatable.dart';

class FlowersEntity extends Equatable {
  final String address;


  const FlowersEntity({
    required this.address,
  });

  @override
  List<Object?> get props => [address];
}
