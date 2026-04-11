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
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5rSUwolABltCNb-yMAT_OPAktZXFNA3GOtA&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUqoJMf50kuFIu-kcBSQYq_Pge3R5eNrovjw&s',
        'https://img.freepik.com/free-photo/close-up-full-bloom-flower_23-2151921043.jpg?semt=ais_hybrid&w=740&q=80',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7hjb-2qwr8KDiw9uU6q3Xb2IidpKMPanGXw&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzpWPE52w87Lw1_8P4ECdNusOrKWfV-_L8zQ&s',
        'https://getflowersdaily.com/wp-content/uploads/2025/03/modi.jpg',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTN-tMFs57w_8wcj5pGjjE-QQxb7uUkHMQ66A&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJDGbG5JmHBrYKPZGoLp722PG_9jP7IzAtXw&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-AfKwnq3y1xx5ksEJWLmWmVvYtB82LqLU4A&s',
        'https://www.thespruce.com/thmb/c3znkzZgMeuvzBy4wH13jVllfUo=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/plants-with-big-flowers-4138211-hero-b10becb169064cc4b3c7967adc1b22e1.jpg',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvg9iFnjwzHoEjJ4-Y0--F1JEHKbX348LvHQ&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuIrtcrONvcWI7c7xJ9OGxAOdkQsUWAsqqog&s',
      ];

      return flowerImages.map((item) => FlowersModel(address: item)).toList();
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
