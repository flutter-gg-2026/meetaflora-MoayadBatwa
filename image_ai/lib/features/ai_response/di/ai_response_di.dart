import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'ai_response_di.config.dart'; 

@InjectableInit(
  initializerName: 'initAiResponse',
   // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/features/ai_response'],
)
void configureAiResponse(GetIt getIt) {
  getIt.initAiResponse();
}
