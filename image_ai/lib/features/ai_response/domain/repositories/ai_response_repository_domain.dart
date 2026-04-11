import 'package:multiple_result/multiple_result.dart';
import 'package:image_ai/core/errors/failure.dart';
import 'package:image_ai/features/ai_response/domain/entities/ai_response_entity.dart';

abstract class AiResponseRepositoryDomain {
    Future<Result<String, Failure>> getAiResponse({required String imageURL});
}
