import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_ai/features/ai_response/domain/use_cases/ai_response_use_case.dart';
import 'package:image_ai/features/ai_response/presentation/cubit/ai_response_state.dart';

class AiResponseCubit extends Cubit<AiResponseState> {
  final AiResponseUseCase _aiResponseUseCase;

  AiResponseCubit(this._aiResponseUseCase) : super(AiResponseInitialState());

  Future<void> getAiResponseMethod(String imageURL) async {

    final result = await _aiResponseUseCase.getAiResponse(imageURL);
    result.when(
      (success) {
        emit(AiResponseSuccessState(aiResponse: success));
      },
      (whenError) {
       emit(AiResponseErrorState(message: whenError.message));
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
