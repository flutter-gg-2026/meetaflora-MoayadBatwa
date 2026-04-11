import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:image_ai/core/network/dio_client.dart';
import 'package:image_ai/core/network/gemini_ai_method.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:image_ai/core/services/local_keys_service.dart';
import 'package:image_ai/features/ai_response/data/models/ai_response_model.dart';
import 'package:image_ai/core/errors/network_exceptions.dart';

abstract class BaseAiResponseRemoteDataSource {
  Future<String> getAiResponse({required String imagePath});
}

@LazySingleton(as: BaseAiResponseRemoteDataSource)
class AiResponseRemoteDataSource implements BaseAiResponseRemoteDataSource {
  final DioClient _dio;

  AiResponseRemoteDataSource(this._dio);

  @override
  Future<String> getAiResponse({required String imagePath}) async {
    try {
      log(imagePath);
      final imageFile = File(imagePath);
      final bytes = await imageFile.readAsBytes();
      final base64Image = base64Encode(bytes);
      print(imageFile);
      final response = await _dio.uploadImage(base64Image);
      print("datasourse response: $response");
      return "LLM Response";
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
