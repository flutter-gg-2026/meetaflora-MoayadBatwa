import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_ai/core/constants/app_colors.dart';
import 'package:image_ai/features/flowers/presentation/cubit/flowers_cubit.dart';

class FlowersFeatureScreen extends StatelessWidget {
  const FlowersFeatureScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final _ = context.read<FlowersCubit>();

    return Scaffold(

      appBar: AppBar(title: const Text('Flowers')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
              primary: false,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 12,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 4,
                  color: AppColors.success,
                  shadowColor: AppColors.error,
                  clipBehavior: .antiAlias,
                  child: Image.asset("assets/images/flower_1.jpg", fit: .fill,),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
