// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/application/application_bloc.dart' as _i17;
import 'application/applications_overview_actor/applications_overview_actor_bloc.dart'
    as _i18;
import 'application/applications_overview_watcher/applications_overview_watcher_bloc.dart'
    as _i19;
import 'application/auth/auth_bloc.dart' as _i20;
import 'application/auth/register_form/register_form_bloc.dart' as _i13;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i14;
import 'application/navigation/navigation_bloc.dart' as _i11;
import 'application/profile/profile_bloc.dart' as _i12;
import 'application/util/util_bloc.dart' as _i15;
import 'application/view_application/view_application_bloc.dart' as _i16;
import 'domain/application/i_admin_application_repository.dart' as _i3;
import 'domain/application/i_application_repository.dart' as _i7;
import 'domain/auth/i_auth_repository.dart' as _i9;
import 'domain/profile/i_profile_repository.dart' as _i5;
import 'infrastructure/application/api_admin_application_repository.dart'
    as _i4;
import 'infrastructure/application/api_application_repository.dart' as _i8;
import 'infrastructure/auth/api_auth_repository.dart' as _i10;
import 'infrastructure/profile/api_profile_repository.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAdminApplicationRepository>(
      () => _i4.ApiAdminApplicationRepository());
  gh.lazySingleton<_i5.IApplicationProfileRepository>(
      () => _i6.ApiApplicationProfileRepository());
  gh.lazySingleton<_i7.IApplicationRepository>(
      () => _i8.ApiApplicationRepository());
  gh.lazySingleton<_i9.IAuthRepository>(() => _i10.ApiAuthRepository());
  gh.lazySingleton<_i11.NavigationBloc>(() => _i11.NavigationBloc());
  gh.lazySingleton<_i12.ProfileBloc>(
      () => _i12.ProfileBloc(get<_i5.IApplicationProfileRepository>()));
  gh.factory<_i13.RegisterFormBloc>(
      () => _i13.RegisterFormBloc(get<_i9.IAuthRepository>()));
  gh.factory<_i14.SignInFormBloc>(
      () => _i14.SignInFormBloc(get<_i9.IAuthRepository>()));
  gh.lazySingleton<_i15.UtilBloc>(() => _i15.UtilBloc());
  gh.lazySingleton<_i16.ViewApplicationBloc>(() => _i16.ViewApplicationBloc());
  gh.lazySingleton<_i17.ApplicationBloc>(
      () => _i17.ApplicationBloc(get<_i7.IApplicationRepository>()));
  gh.factory<_i18.ApplicationsOverviewActorBloc>(() =>
      _i18.ApplicationsOverviewActorBloc(
          get<_i3.IAdminApplicationRepository>()));
  gh.factory<_i19.ApplicationsOverviewWatcherBloc>(() =>
      _i19.ApplicationsOverviewWatcherBloc(
          get<_i3.IAdminApplicationRepository>()));
  gh.factory<_i20.AuthBloc>(() => _i20.AuthBloc(get<_i9.IAuthRepository>()));
  return get;
}
