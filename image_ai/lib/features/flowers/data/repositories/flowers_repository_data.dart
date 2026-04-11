
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:image_ai/core/errors/network_exceptions.dart';
import 'package:image_ai/core/errors/failure.dart';
import 'package:image_ai/features/flowers/domain/entities/flowers_entity.dart';

import 'package:image_ai/features/flowers/data/datasources/flowers_remote_data_source.dart';
import 'package:image_ai/features/flowers/data/models/flowers_model.dart';
import 'package:image_ai/features/flowers/domain/repositories/flowers_repository_domain.dart';

@LazySingleton(as: FlowersRepositoryDomain)
class FlowersRepositoryData implements FlowersRepositoryDomain{
  final BaseFlowersRemoteDataSource remoteDataSource;


  FlowersRepositoryData(this.remoteDataSource);

@override
  Future<Result<List<FlowersEntity>, Failure>> getFlowers() async {
    try {
      final response = await remoteDataSource.getFlowers();
      return Success(response.map((item) => item.toEntity()).toList());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
