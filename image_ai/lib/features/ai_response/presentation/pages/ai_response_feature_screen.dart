import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_ai/features/ai_response/presentation/cubit/ai_response_cubit.dart';

class AiResponseFeatureScreen extends StatelessWidget {
  const AiResponseFeatureScreen({super.key});
  @override
  Widget build(BuildContext context) {
      final _ = context.read<AiResponseCubit>();

    return Scaffold(
      appBar: AppBar(title: const Text('AiResponse Feature Screen')),
      body: Column(children: [
          
        ],
      ),
    );
  }
}
