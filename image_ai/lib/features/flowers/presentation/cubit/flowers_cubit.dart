import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_ai/features/flowers/domain/use_cases/flowers_use_case.dart';
import 'package:image_ai/features/flowers/presentation/cubit/flowers_state.dart';

class FlowersCubit extends Cubit<FlowersState> {
  final FlowersUseCase _flowersUseCase;

  FlowersCubit(this._flowersUseCase) : super(FlowersInitialState());

  Future<void> getFlowersMethod() async {
    final result = await _flowersUseCase.getFlowers();
    result.when(
      (success) {
        //here is when success result
      },
      (whenError) {
       //here is when error result
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
