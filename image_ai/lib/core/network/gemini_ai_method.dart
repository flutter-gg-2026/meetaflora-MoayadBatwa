import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:image_ai/core/network/api_endpoints.dart';
import 'package:image_ai/core/network/dio_client.dart';

extension GeminiMethods on DioClient {
  Future<String> convertImageToBase64(String imageURL) async {
    // Convert image into base64<String> datatype as ai-api require
    final response = await dio.get(
      imageURL,
      options: Options(responseType: .bytes),
    );
    log("converted Image ${response.data}====================1");
    final base64Image = base64Encode(response.data);
    return base64Image;
  }

  Future<String> uploadImage(String base64Image) async {
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

    log(
      "==================== Image Uploaded = Response Received =================",
    );

    return Future.value("AI Response Here: ...");
  }
}
