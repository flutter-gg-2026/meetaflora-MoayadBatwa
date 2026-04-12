import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_ai/core/navigation/routers.dart';
import 'package:image_picker/image_picker.dart';

class GalleryWidget extends StatelessWidget {
  const GalleryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      onPressed: () async {
        final ImagePicker picker = ImagePicker();
        // Pick an image.
        final XFile? image = await picker.pickImage(
          source: ImageSource.gallery,
        );

        if (image == null) {
          return;
        }

        if (context.mounted) {
          context.push(Routes.aiResponse, extra: image.path);
        }
      },
      icon: Icon(Icons.image_search),
    );
  }
}
