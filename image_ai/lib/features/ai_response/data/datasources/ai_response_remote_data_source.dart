import 'package:image_ai/core/network/dio_client.dart';
import 'package:image_ai/core/network/gemini_ai_method.dart';
import 'package:injectable/injectable.dart';
import 'package:image_ai/core/errors/network_exceptions.dart';

abstract class BaseAiResponseRemoteDataSource {
  Future<String> getAiResponse({required String imageURL});
}

@LazySingleton(as: BaseAiResponseRemoteDataSource)
class AiResponseRemoteDataSource implements BaseAiResponseRemoteDataSource {
  final DioClient _dio;

  AiResponseRemoteDataSource(this._dio);

  @override
  Future<String> getAiResponse({required String imageURL}) async {
    try {
      final base64Image = await _dio.convertImageToBase64(imageURL);
      
      final aiResponse = await _dio.uploadImage(base64Image);

      return aiResponse;
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
