import 'package:injectable/injectable.dart';
import 'package:image_ai/features/flowers/data/models/flowers_model.dart';
import 'package:image_ai/core/errors/network_exceptions.dart';

abstract class BaseFlowersRemoteDataSource {
  Future<List<FlowersModel>> getFlowers();
}

@LazySingleton(as: BaseFlowersRemoteDataSource)
class FlowersRemoteDataSource implements BaseFlowersRemoteDataSource {
  FlowersRemoteDataSource();

  @override
  Future<List<FlowersModel>> getFlowers() async {
    try {
      List<String> flowerImages = [
        'assets/images/flower_1.jpg',
        'assets/images/flower_2.jpg',
        'assets/images/flower_3.jpg',
        'assets/images/flower_4.jpg',
        'assets/images/flower_5.jpg',
        'assets/images/flower_6.jpg',
        'assets/images/flower_7.jpg',
        'assets/images/flower_8.jpg',
        'assets/images/flower_9.jpg',
        'assets/images/flower_10.jpg',
        'assets/images/flower_11.jpg',
        'assets/images/flower_12.jpg',
      ];

      return flowerImages.map((item) => FlowersModel(path: item)).toList();
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
