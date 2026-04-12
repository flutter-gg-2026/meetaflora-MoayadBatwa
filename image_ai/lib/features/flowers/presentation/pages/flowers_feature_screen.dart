import 'package:any_image_view/any_image_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_ai/core/constants/app_colors.dart';
import 'package:image_ai/core/extensions/font_extensions.dart';
import 'package:image_ai/core/navigation/routers.dart';
import 'package:image_ai/core/widgets/loading_widget.dart';
import 'package:image_ai/features/flowers/presentation/cubit/flowers_cubit.dart';
import 'package:image_ai/features/flowers/presentation/cubit/flowers_state.dart';
import 'package:image_ai/features/flowers/presentation/widgets/gallery_widget.dart';

class FlowersFeatureScreen extends StatelessWidget {
  const FlowersFeatureScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<FlowersCubit>();

    return Scaffold(
      appBar: AppBar(title: const Text('Flowers'), actions: [GalleryWidget()]),
      body: SizedBox.expand(
        child: DecoratedBox(
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
                    BlocBuilder<FlowersCubit, FlowersState>(
                      builder: (context, state) {
                        switch (state) {
                          case FlowersInitialState _:
                            cubit.getFlowersMethod();
                            return LoadingWidget();

                          case FlowersErrorState _:
                            return Column(
                              children: [
                                Center(
                                  child: Stack(
                                    alignment: .bottomCenter,
                                    children: [
                                      AnyImageView(
                                        imagePath: "assets/images/flower_1.jpg",
                                        fit: .fill,
                                        width: 200,
                                        height: 200,
                                        shape: .circle,
                                        borderRadius: .circular(200),
                                        border: .all(
                                          width: 5,
                                          color: AppColors.warning,
                                        ),
                                      ),

                                      Icon(
                                        Icons.not_interested,
                                        color: AppColors.error,
                                        size: 200,
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  state.message,
                                  style: TextStyle(
                                    decoration: .underline,
                                    fontWeight: .bold,
                                    fontSize: 20,
                                    color: AppColors.error,
                                  ),
                                ),
                              ],
                            );

                          case FlowersSuccessState _:
                            return GridView.builder(
                              primary: false,
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10,
                                    mainAxisExtent: 200,
                                  ),
                              itemCount: state.flowers.length,
                              itemBuilder: (context, index) {
                                return AnyImageView(
                                  width: 50.sizeSW(),
                                  height: 200,
                                  imagePath: state.flowers[index].address,
                                  fit: .fill,
                                  onTap: () => context.push(
                                    Routes.aiResponse,
                                    extra: state.flowers[index].address,
                                  ),
                                  borderRadius: .circular(20),
                                  boxShadow: kElevationToShadow[4],
                                  errorWidget: Icon(
                                    Icons.error,
                                    color: AppColors.error,
                                  ),
                                );
                              },
                            );

                          default:
                            return SizedBox.shrink();
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
