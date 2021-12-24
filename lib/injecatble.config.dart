// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/dashboard/dashboard_cubit.dart' as _i6;
import 'domain/i_dashboard.dart' as _i4;
import 'infrastructure/core/dio_inject_module.dart' as _i7;
import 'infrastructure/dashboard_repository.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dioInjectModule = _$DioInjectModule();
  gh.factory<_i3.Dio>(() => dioInjectModule.getDio);
  gh.lazySingleton<_i4.IDashboard>(
      () => _i5.DashboardRepository(get<_i3.Dio>()));
  gh.factory<_i6.DashboardCubit>(
      () => _i6.DashboardCubit(get<_i4.IDashboard>()));
  return get;
}

class _$DioInjectModule extends _i7.DioInjectModule {}
