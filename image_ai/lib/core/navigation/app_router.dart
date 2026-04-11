import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'routers.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_ai/features/flowers/presentation/pages/flowers_feature_screen.dart';
import 'package:image_ai/features/flowers/presentation/cubit/flowers_cubit.dart';


class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: Routes.flowers,
    routes: [
      GoRoute(
        path: Routes.splash,
        builder: (context, state) {
          return Scaffold(body: Center(child: Text("splash screen")));
        }, // SplashScreen
      ),
    
  GoRoute(
    path: Routes.flowers,
    builder: (context, state) => BlocProvider(
          create: (context) => FlowersCubit(GetIt.I.get()),
          child: const FlowersFeatureScreen(),
        ),
  ),
],

    errorBuilder: (context, state) =>
        Scaffold(body: Center(child: Text('Page not found: ${state.uri}'))),
  );
}
