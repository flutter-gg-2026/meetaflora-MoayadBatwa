import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_ai/core/constants/app_colors.dart';
import 'package:image_ai/core/navigation/routers.dart';
import 'package:image_ai/core/widgets/loading_widget.dart';
import 'package:image_ai/features/flowers/presentation/cubit/flowers_cubit.dart';
import 'package:image_ai/features/flowers/presentation/cubit/flowers_state.dart';

class FlowersFeatureScreen extends StatelessWidget {
  const FlowersFeatureScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<FlowersCubit>();

    return Scaffold(
      appBar: AppBar(title: const Text('Flowers')),
      body: SingleChildScrollView(
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
                              Container(
                                clipBehavior: .antiAlias,
                                height: 200,
                                decoration: BoxDecoration(
                                  shape: .circle,
                                  color: AppColors.warning,
                                ),
                                child: Image.asset(
                                  "assets/images/flower_1.jpg",
                                  fit: .fill,
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
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: state.flowers.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () => context.push(Routes.aiResponse),
                          child: Card(
                            elevation: 4,
                            color: AppColors.success,
                            shadowColor: AppColors.success,
                            clipBehavior: .antiAlias,
                            child: Image.asset(
                              state.flowers[index].path,
                              fit: .fill,
                            ),
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
    );
  }
}
