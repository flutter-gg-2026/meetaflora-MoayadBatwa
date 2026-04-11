import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:image_ai/core/network/api_endpoints.dart';
import 'package:image_ai/core/network/dio_client.dart';

extension GeminiMethods on DioClient {
  Future<String> uploadImage(String base64Image) async {
    // Convert image into base64<String> datatype as ai-api require
    

    // create the post method for body/data JSON as ai-api require
    final data = {
      "contents": [
        {
          "parts": [
            {
              "text":
                  "Explain The Flower in this image with in structured way, start from the name",
            },
            {
              "inlineData": {"mimeType": "image/png", "data": base64Image},
            },
          ],
        },
      ],
    };

    final response = await dio.post(ApiEndpoints.baseUrl, data: data);

    print(response.data);

    log("==================== Image Uploaded = Response Received =================");

    return Future.value("AI Response Here: ...");
  }
}
