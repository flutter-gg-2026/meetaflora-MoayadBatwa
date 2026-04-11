import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_ai/features/flowers/presentation/cubit/flowers_cubit.dart';

class FlowersFeatureScreen extends StatelessWidget {
  const FlowersFeatureScreen({super.key});
  @override
  Widget build(BuildContext context) {
      final _ = context.read<FlowersCubit>();

    return Scaffold(
      appBar: AppBar(title: const Text('Flowers Feature Screen')),
      body: Column(children: [
          
        ],
      ),
    );
  }
}
