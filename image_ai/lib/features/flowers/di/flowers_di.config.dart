// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:image_ai/features/flowers/data/datasources/flowers_remote_data_source.dart'
    as _i979;
import 'package:image_ai/features/flowers/data/repositories/flowers_repository_data.dart'
    as _i650;
import 'package:image_ai/features/flowers/domain/repositories/flowers_repository_domain.dart'
    as _i1043;
import 'package:image_ai/features/flowers/domain/use_cases/flowers_use_case.dart'
    as _i55;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initFlowers({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i979.BaseFlowersRemoteDataSource>(
      () => _i979.FlowersRemoteDataSource(),
    );
    gh.lazySingleton<_i1043.FlowersRepositoryDomain>(
      () =>
          _i650.FlowersRepositoryData(gh<_i979.BaseFlowersRemoteDataSource>()),
    );
    gh.lazySingleton<_i55.FlowersUseCase>(
      () => _i55.FlowersUseCase(gh<_i1043.FlowersRepositoryDomain>()),
    );
    return this;
  }
}
