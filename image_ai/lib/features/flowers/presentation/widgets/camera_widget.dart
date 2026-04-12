import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_ai/core/navigation/routers.dart';
import 'package:image_picker/image_picker.dart';

class CameraWidget extends StatelessWidget {
  const CameraWidget({super.key});

  @override
  Widget build(BuildContext context) {
    {
      return IconButton.filled(
        onPressed: () async {
          final ImagePicker picker = ImagePicker();
          // Pick by camera.
          final XFile? image = await picker.pickImage(
            source: ImageSource.camera,
          );

          if (image == null) {
            return;
          }

          log("object = ${image.path}");
          if (context.mounted) {
            context.push(Routes.aiResponse, extra: image.path);
          }
        },
        icon: Icon(Icons.camera),
      );
    }
  }
}
