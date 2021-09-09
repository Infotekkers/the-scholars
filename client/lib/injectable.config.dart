// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/announcements/announcement_actor/announcement_actor_bloc.dart'
    as _i3;
import 'application/announcements/announcement_watcher/announcement_watcher_bloc.dart'
    as _i5;
import 'application/application/application_bloc.dart' as _i17;
import 'application/applications_overview_actor/applications_overview_actor_bloc.dart'
    as _i18;
import 'application/applications_overview_watcher/applications_overview_watcher_bloc.dart'
    as _i19;
import 'application/auth/register_form/register_form_bloc.dart' as _i13;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i14;
import 'application/navigation/navigation_bloc.dart' as _i12;
import 'application/util/util_bloc.dart' as _i15;
import 'application/view_application/view_application_bloc.dart' as _i16;
import 'domain/announcement/i_admin_announcement_repository.dart' as _i4;
import 'domain/application/i_admin_application_repository.dart' as _i6;
import 'domain/application/i_application_repository.dart' as _i8;
import 'domain/auth/i_auth_repository.dart' as _i10;
import 'infrastructure/application/api_admin_application_repository.dart'
    as _i7;
import 'infrastructure/application/api_application_repository.dart' as _i9;
import 'infrastructure/auth/api_auth_repository.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AnnouncementActorBloc>(
      () => _i3.AnnouncementActorBloc(get<_i4.IAdminAnnouncementRepository>()));
  gh.factory<_i5.AnnouncementWatcherBloc>(() =>
      _i5.AnnouncementWatcherBloc(get<_i4.IAdminAnnouncementRepository>()));
  gh.lazySingleton<_i6.IAdminApplicationRepository>(
      () => _i7.ApiAdminApplicationRepository());
  gh.lazySingleton<_i8.IApplicationRepository>(
      () => _i9.ApiApplicationRepository());
  gh.lazySingleton<_i10.IAuthRepository>(() => _i11.ApiAuthRepository());
  gh.lazySingleton<_i12.NavigationBloc>(() => _i12.NavigationBloc());
  gh.factory<_i13.RegisterFormBloc>(
      () => _i13.RegisterFormBloc(get<_i10.IAuthRepository>()));
  gh.factory<_i14.SignInFormBloc>(
      () => _i14.SignInFormBloc(get<_i10.IAuthRepository>()));
  gh.lazySingleton<_i15.UtilBloc>(() => _i15.UtilBloc());
  gh.lazySingleton<_i16.ViewApplicationBloc>(() => _i16.ViewApplicationBloc());
  gh.lazySingleton<_i17.ApplicationBloc>(
      () => _i17.ApplicationBloc(get<_i8.IApplicationRepository>()));
  gh.factory<_i18.ApplicationsOverviewActorBloc>(() =>
      _i18.ApplicationsOverviewActorBloc(
          get<_i6.IAdminApplicationRepository>()));
  gh.factory<_i19.ApplicationsOverviewWatcherBloc>(() =>
      _i19.ApplicationsOverviewWatcherBloc(
          get<_i6.IAdminApplicationRepository>()));
  return get;
}
