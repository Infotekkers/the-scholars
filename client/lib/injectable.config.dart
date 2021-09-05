// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/application/application_bloc.dart' as _i12;
import 'application/applications_overview_watcher/applications_overview_watcher_bloc.dart'
    as _i13;
import 'application/auth/register_form/register_form_bloc.dart' as _i10;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i11;
import 'application/navigation/navigation_bloc.dart' as _i9;
import 'domain/application/i_admin_application_repository.dart' as _i3;
import 'domain/application/i_application_repository.dart' as _i5;
import 'domain/auth/i_auth_repository.dart' as _i7;
import 'infrastructure/application/api_admin_application_repository.dart'
    as _i4;
import 'infrastructure/application/api_application_repository.dart' as _i6;
import 'infrastructure/auth/api_auth_repository.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAdminApplicationRepository>(
      () => _i4.ApiAdminApplicationRepository());
  gh.lazySingleton<_i5.IApplicationRepository>(
      () => _i6.ApiApplicationRepository());
  gh.lazySingleton<_i7.IAuthRepository>(() => _i8.ApiAuthRepository());
  gh.lazySingleton<_i9.NavigationBloc>(() => _i9.NavigationBloc());
  gh.factory<_i10.RegisterFormBloc>(
      () => _i10.RegisterFormBloc(get<_i7.IAuthRepository>()));
  gh.factory<_i11.SignInFormBloc>(
      () => _i11.SignInFormBloc(get<_i7.IAuthRepository>()));
  gh.lazySingleton<_i12.ApplicationBloc>(
      () => _i12.ApplicationBloc(get<_i5.IApplicationRepository>()));
  gh.factory<_i13.ApplicationsOverviewWatcherBloc>(() =>
      _i13.ApplicationsOverviewWatcherBloc(
          get<_i3.IAdminApplicationRepository>()));
  return get;
}
