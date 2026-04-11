import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_ai/features/ai_response/presentation/cubit/ai_response_cubit.dart';

class AiResponseFeatureScreen extends StatelessWidget {
  final String imageURL;
  const AiResponseFeatureScreen({super.key, required this.imageURL});
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AiResponseCubit>();

    return Scaffold(
      appBar: AppBar(title: const Text('Ai Response About Your Image')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: SizedBox(
                height: 300,
                child: Image.network(
                  imageURL,
                  fit: .fitHeight,
                ),
              ),
            ),

            SizedBox(height: 20),

            FilledButton(onPressed: (){
              cubit.getAiResponseMethod(imageURL);
            }, child: Text("Get AI Response"))
          ],
        ),
      ),
    );
  }
}
