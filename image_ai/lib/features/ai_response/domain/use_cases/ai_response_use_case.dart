import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:image_ai/core/errors/failure.dart';
import 'package:image_ai/features/ai_response/domain/repositories/ai_response_repository_domain.dart';


@lazySingleton
class AiResponseUseCase {
  final AiResponseRepositoryDomain _repositoryData;

  AiResponseUseCase(this._repositoryData);

   Future<Result<String, Failure>> getAiResponse(String imageURL) async {
    return _repositoryData.getAiResponse(imageURL: imageURL);
  }
}
