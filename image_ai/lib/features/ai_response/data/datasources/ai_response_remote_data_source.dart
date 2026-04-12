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
  Future<String> getAiResponse({required String imageURL});
}

@LazySingleton(as: BaseAiResponseRemoteDataSource)
class AiResponseRemoteDataSource implements BaseAiResponseRemoteDataSource {
  final DioClient _dio;

  AiResponseRemoteDataSource(this._dio);

  @override
  Future<String> getAiResponse({required String imageURL}) async {
    try {
      // final base64Image = await _dio.convertImageToBase64(imageURL);
      
      // final aiResponse = await _dio.uploadImage(base64Image);

      return "aiResponse aiResponse aiResponse aiResponse aiResponse aiResponse";
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
