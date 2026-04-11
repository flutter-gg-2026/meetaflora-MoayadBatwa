import 'package:get_it/get_it.dart';
import 'package:image_ai/core/di/configure_dependencies.config.dart';
import 'package:injectable/injectable.dart';
import 'package:image_ai/features/flowers/di/flowers_di.dart';
import 'package:image_ai/features/ai_response/di/ai_response_di.dart';

@InjectableInit(
  initializerName: 'init', 
  preferRelativeImports: true,
  asExtension: true, 
  generateForDir: ['lib/core'],
)

Future<void> configureDependencies() async {
  final getIt = GetIt.instance;
  getIt.init();
    configureFlowers(getIt);
    configureAiResponse(getIt);
}
