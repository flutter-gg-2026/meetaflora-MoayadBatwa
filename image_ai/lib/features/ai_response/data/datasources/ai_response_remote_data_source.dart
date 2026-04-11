import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:image_ai/core/services/local_keys_service.dart';
import 'package:image_ai/features/ai_response/data/models/ai_response_model.dart';
import 'package:image_ai/core/errors/network_exceptions.dart';


abstract class BaseAiResponseRemoteDataSource {
  Future<AiResponseModel> getAiResponse();
}


@LazySingleton(as: BaseAiResponseRemoteDataSource)
class AiResponseRemoteDataSource implements BaseAiResponseRemoteDataSource {
 
  final SupabaseClient _supabase;
  final LocalKeysService _localKeysService;
  
  

   AiResponseRemoteDataSource(this._localKeysService, this._supabase);



    @override
  Future<AiResponseModel> getAiResponse() async {
    try {
      return AiResponseModel(id: 1, firstName: "Last Name", lastName: "First Name");
    } catch (error) {
     throw FailureExceptions.getException(error);
    }
  }
}
