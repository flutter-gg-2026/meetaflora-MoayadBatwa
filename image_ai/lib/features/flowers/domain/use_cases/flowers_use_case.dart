import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:image_ai/core/errors/failure.dart';
import 'package:image_ai/features/flowers/domain/entities/flowers_entity.dart';
import 'package:image_ai/features/flowers/domain/repositories/flowers_repository_domain.dart';


@lazySingleton
class FlowersUseCase {
  final FlowersRepositoryDomain _repositoryData;

  FlowersUseCase(this._repositoryData);

   Future<Result<List<FlowersEntity>, Failure>> getFlowers() async {
    return _repositoryData.getFlowers();
  }
}
