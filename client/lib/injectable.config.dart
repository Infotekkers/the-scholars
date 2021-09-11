// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/announcements/announcement_actor/announcement_actor_bloc.dart'
    as _i21;
import 'application/announcements/announcement_form/announcement_form_bloc.dart'
    as _i22;
import 'application/announcements/announcement_watcher/announcement_watcher_bloc.dart'
    as _i23;
import 'application/application/application_bloc.dart' as _i24;
import 'application/applications_overview_actor/applications_overview_actor_bloc.dart'
    as _i25;
import 'application/applications_overview_watcher/applications_overview_watcher_bloc.dart'
    as _i26;
import 'application/auth/auth_bloc.dart' as _i27;
import 'application/auth/register_form/register_form_bloc.dart' as _i17;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i18;
import 'application/credentials/credentials_bloc.dart' as _i28;
import 'application/navigation/navigation_bloc.dart' as _i15;
import 'application/profile/profile_bloc.dart' as _i16;
import 'application/util/util_bloc.dart' as _i19;
import 'application/view_application/view_application_bloc.dart' as _i20;
import 'domain/announcement/i_admin_announcement_repository.dart' as _i5;
import 'domain/application/i_admin_application_repository.dart' as _i3;
import 'domain/application/i_application_repository.dart' as _i9;
import 'domain/auth/i_auth_repository.dart' as _i11;
import 'domain/credentials/i_credentials_repository.dart' as _i13;
import 'domain/profile/i_profile_repository.dart' as _i7;
import 'infrastructure/announcement/announcement_admin_repository.dart' as _i6;
import 'infrastructure/application/api_admin_application_repository.dart'
    as _i4;
import 'infrastructure/application/api_application_repository.dart' as _i10;
import 'infrastructure/auth/api_auth_repository.dart' as _i12;
import 'infrastructure/credentials/api_credential_repository.dart' as _i14;
import 'infrastructure/profile/api_profile_repository.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAdminApplicationRepository>(
      () => _i4.ApiAdminApplicationRepository());
  gh.lazySingleton<_i5.IAnnouncementRepository>(
      () => _i6.AnnoncementRepository());
  gh.lazySingleton<_i7.IApplicationProfileRepository>(
      () => _i8.ApiApplicationProfileRepository());
  gh.lazySingleton<_i9.IApplicationRepository>(
      () => _i10.ApiApplicationRepository());
  gh.lazySingleton<_i11.IAuthRepository>(() => _i12.ApiAuthRepository());
  gh.lazySingleton<_i13.ICredentialsRepository>(() => _i14.ApiCredentials());
  gh.lazySingleton<_i15.NavigationBloc>(() => _i15.NavigationBloc());
  gh.lazySingleton<_i16.ProfileBloc>(
      () => _i16.ProfileBloc(get<_i7.IApplicationProfileRepository>()));
  gh.factory<_i17.RegisterFormBloc>(
      () => _i17.RegisterFormBloc(get<_i11.IAuthRepository>()));
  gh.factory<_i18.SignInFormBloc>(
      () => _i18.SignInFormBloc(get<_i11.IAuthRepository>()));
  gh.lazySingleton<_i19.UtilBloc>(() => _i19.UtilBloc());
  gh.lazySingleton<_i20.ViewApplicationBloc>(() => _i20.ViewApplicationBloc());
  gh.factory<_i21.AnnouncementActorBloc>(
      () => _i21.AnnouncementActorBloc(get<_i5.IAnnouncementRepository>()));
  gh.factory<_i22.AnnouncementFormBloc>(
      () => _i22.AnnouncementFormBloc(get<_i5.IAnnouncementRepository>()));
  gh.factory<_i23.AnnouncementWatcherBloc>(
      () => _i23.AnnouncementWatcherBloc(get<_i5.IAnnouncementRepository>()));
  gh.lazySingleton<_i24.ApplicationBloc>(
      () => _i24.ApplicationBloc(get<_i9.IApplicationRepository>()));
  gh.factory<_i25.ApplicationsOverviewActorBloc>(() =>
      _i25.ApplicationsOverviewActorBloc(
          get<_i3.IAdminApplicationRepository>()));
  gh.factory<_i26.ApplicationsOverviewWatcherBloc>(() =>
      _i26.ApplicationsOverviewWatcherBloc(
          get<_i3.IAdminApplicationRepository>()));
  gh.factory<_i27.AuthBloc>(() => _i27.AuthBloc(get<_i11.IAuthRepository>()));
  gh.lazySingleton<_i28.CredentialsBloc>(
      () => _i28.CredentialsBloc(get<_i13.ICredentialsRepository>()));
  return get;
}
