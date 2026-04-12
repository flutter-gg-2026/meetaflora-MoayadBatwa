import 'package:multiple_result/multiple_result.dart';
import 'package:image_ai/core/errors/failure.dart';

abstract class AiResponseRepositoryDomain {
    Future<Result<String, Failure>> getAiResponse({required String imageURL});
}
