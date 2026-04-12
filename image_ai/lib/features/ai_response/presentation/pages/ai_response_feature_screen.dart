import 'package:any_image_view/any_image_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_ai/features/ai_response/presentation/cubit/ai_response_cubit.dart';
import 'package:image_ai/features/ai_response/presentation/cubit/ai_response_state.dart';

class AiResponseFeatureScreen extends StatelessWidget {
  final String imageURL;
  const AiResponseFeatureScreen({super.key, required this.imageURL});
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AiResponseCubit>();

    return Scaffold(
      appBar: AppBar(title: const Text('Ai Response About Your Image')),
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: .fill,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: AnyImageView(
                      imagePath: imageURL,
                      height: 250,
                      width: 250,
                      fit: .fill,
                      borderRadius: .circular(20),
                      boxShadow: kElevationToShadow[4],
                    ),
                  ),
            
                  SizedBox(height: 20),
            
                  BlocBuilder<AiResponseCubit, AiResponseState>(
                    builder: (context, state) {
                      switch (state) {
                        case AiResponseErrorState _:
                          return Icon(Icons.error);
            
                        case AiResponseSuccessState _:
                          return Text(state.aiResponse);
            
                        default:
                          return SizedBox.shrink();
                      }
                    },
                  ),

                  SizedBox(height: 20),
            
                  FilledButton(
                    onPressed: () {
                      cubit.getAiResponseMethod(imageURL);
                    },
                    child: Text("Get AI Response"),
                  ),

                  SizedBox(height: 400),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
