import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:image_ai/core/network/api_endpoints.dart';
import 'package:image_ai/core/network/dio_client.dart';

extension GeminiMethods on DioClient {
  Future<String> convertImageToBase64(String imageURL) async {
    // Convert image into base64<String> datatype as ai-api require
    String base64Image;

    if (imageURL.contains("https://")) {
      final response = await dio.get(
        imageURL,
        options: Options(responseType: .bytes),
      );
      base64Image = base64Encode(response.data);
    }
    else {
      final File imageFile = File(imageURL);
      final imageBytes = await imageFile.readAsBytes();
      base64Image = base64Encode(imageBytes);
    }

    return base64Image;
  }

  Future<String> uploadImage(String base64Image) async {
    // create the post method for body/data JSON as ai-api require
    final data = {
      "contents": [
        {
          "parts": [
            {"text": "Tell me about the Flower, start with the name"},
            {
              "inlineData": {"mimeType": "image/png", "data": base64Image},
            },
          ],
        },
      ],
    };

    final response = await dio.post(ApiEndpoints.baseUrl, data: data);

    return response.data["candidates"][0]["content"]["parts"][0]["text"];
  }
}
