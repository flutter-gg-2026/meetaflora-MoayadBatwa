import 'package:equatable/equatable.dart';

class FlowersEntity extends Equatable {
  final String path;


  const FlowersEntity({
    required this.path,
  });

  @override
  List<Object?> get props => [path];
}
