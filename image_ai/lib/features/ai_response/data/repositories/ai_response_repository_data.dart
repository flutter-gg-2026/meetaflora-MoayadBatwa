
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:image_ai/core/errors/network_exceptions.dart';
import 'package:image_ai/core/errors/failure.dart';
import 'package:image_ai/features/ai_response/domain/entities/ai_response_entity.dart';

import 'package:image_ai/features/ai_response/data/datasources/ai_response_remote_data_source.dart';
import 'package:image_ai/features/ai_response/data/models/ai_response_model.dart';
import 'package:image_ai/features/ai_response/domain/repositories/ai_response_repository_domain.dart';

@LazySingleton(as: AiResponseRepositoryDomain)
class AiResponseRepositoryData implements AiResponseRepositoryDomain{
  final BaseAiResponseRemoteDataSource remoteDataSource;


  AiResponseRepositoryData(this.remoteDataSource);

@override
  Future<Result<String, Failure>> getAiResponse({required String imagePath}) async {
    try {
      final response = await remoteDataSource.getAiResponse(imagePath: imagePath);
      return Success(response);
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
