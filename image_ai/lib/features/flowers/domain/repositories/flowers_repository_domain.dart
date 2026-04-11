import 'package:multiple_result/multiple_result.dart';
import 'package:image_ai/core/errors/failure.dart';
import 'package:image_ai/features/flowers/domain/entities/flowers_entity.dart';

abstract class FlowersRepositoryDomain {
    Future<Result<FlowersEntity, Failure>> getFlowers();
}
