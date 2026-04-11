import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:image_ai/core/services/local_keys_service.dart';
import 'package:image_ai/features/flowers/data/models/flowers_model.dart';
import 'package:image_ai/core/errors/network_exceptions.dart';


abstract class BaseFlowersRemoteDataSource {
  Future<FlowersModel> getFlowers();
}


@LazySingleton(as: BaseFlowersRemoteDataSource)
class FlowersRemoteDataSource implements BaseFlowersRemoteDataSource {
 
  final SupabaseClient _supabase;
  final LocalKeysService _localKeysService;
  
  

   FlowersRemoteDataSource(this._localKeysService, this._supabase);



    @override
  Future<FlowersModel> getFlowers() async {
    try {
      return FlowersModel(id: 1, firstName: "Last Name", lastName: "First Name");
    } catch (error) {
     throw FailureExceptions.getException(error);
    }
  }
}
