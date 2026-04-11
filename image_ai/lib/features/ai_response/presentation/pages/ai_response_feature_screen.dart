import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_ai/features/ai_response/presentation/cubit/ai_response_cubit.dart';

class AiResponseFeatureScreen extends StatelessWidget {
  final String imagePath;
  const AiResponseFeatureScreen({super.key, required this.imagePath});
  @override
  Widget build(BuildContext context) {
      final _ = context.read<AiResponseCubit>();

    return Scaffold(
      appBar: AppBar(title: const Text('Ai Response About Your Image')),
      body: SingleChildScrollView(
        child: Column(children: [
            Image.asset(imagePath)
          ],
        ),
      ),
    );
  }
}
