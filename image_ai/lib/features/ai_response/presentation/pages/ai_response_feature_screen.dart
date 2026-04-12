import 'package:any_image_view/any_image_view.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_ai/core/constants/app_colors.dart';
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
                  SizedBox(height: 10),

                  Center(
                    child: AnyImageView(
                      imagePath: imageURL,
                      height: 250,
                      width: 250,
                      fit: .fill,
                      borderRadius: .circular(20),
                      boxShadow: kElevationToShadow[4],
                    ).animate().fadeIn(duration: 0.6.seconds),
                  ),

                  SizedBox(height: 20),

                  BlocBuilder<AiResponseCubit, AiResponseState>(
                    builder: (context, state) {
                      switch (state) {
                        case AiResponseLoadingState _:
                          return AnyImageView(
                            imagePath: "assets/lottie/ai_loading.json",
                            height: 150,
                          );

                        case AiResponseErrorState _:
                          return Icon(Icons.error);

                        case AiResponseSuccessState _:
                          return Stack(
                            clipBehavior: .none,
                            children: [
                              Container(
                                width: 250,
                                padding: .all(16),
                                decoration: BoxDecoration(
                                  borderRadius: .circular(20),
                                  gradient: LinearGradient(
                                    begin: .topLeft,
                                    end: .bottomRight,
                                    colors: [
                                      const Color.fromARGB(164, 59, 218, 246),
                                      const Color.fromARGB(178, 40, 243, 114),
                                    ],
                                  ),
                                  boxShadow: kElevationToShadow[4],
                                ),
                                child: Text(
                                  state.aiResponse,
                                  style: TextStyle(
                                    color: AppColors.textPrimary,
                                  ),
                                ),
                              ).animate().scaleY(
                                begin: 0,
                                end: 1,
                                alignment: Alignment.topCenter,
                                duration: 1.5.seconds,
                                curve: Curves.easeOut,
                              ),

                              Positioned(
                                top: -30,
                                right: -30,
                                child: AnyImageView(
                                  imagePath: "assets/lottie/ai_response.json",
                                  height: 110,
                                ),
                              ),
                            ],
                          );

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
                      )
                      .animate(onPlay: (controller) => controller.repeat())
                      .shimmer(duration: 1.5.seconds),

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
