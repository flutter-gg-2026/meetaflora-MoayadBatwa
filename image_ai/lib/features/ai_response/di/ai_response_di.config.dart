// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:image_ai/core/network/dio_client.dart' as _i345;
import 'package:image_ai/features/ai_response/data/datasources/ai_response_remote_data_source.dart'
    as _i392;
import 'package:image_ai/features/ai_response/data/repositories/ai_response_repository_data.dart'
    as _i702;
import 'package:image_ai/features/ai_response/domain/repositories/ai_response_repository_domain.dart'
    as _i656;
import 'package:image_ai/features/ai_response/domain/use_cases/ai_response_use_case.dart'
    as _i790;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initAiResponse({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i392.BaseAiResponseRemoteDataSource>(
      () => _i392.AiResponseRemoteDataSource(gh<_i345.DioClient>()),
    );
    gh.lazySingleton<_i656.AiResponseRepositoryDomain>(
      () => _i702.AiResponseRepositoryData(
        gh<_i392.BaseAiResponseRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i790.AiResponseUseCase>(
      () => _i790.AiResponseUseCase(gh<_i656.AiResponseRepositoryDomain>()),
    );
    return this;
  }
}
