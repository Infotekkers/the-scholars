// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/application/application_bloc.dart' as _i3;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i8;
import 'application/navigation/navigation_bloc.dart' as _i7;
import 'domain/application/i_application_repository.dart' as _i4;
import 'domain/auth/i_auth_repository.dart' as _i5;
import 'application/auth/register_form/register_form_bloc.dart' as _i5;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i6;
import 'domain/auth/i_auth_repository.dart' as _i3;

import 'infrastructure/auth/api_auth_repository.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.ApplicationBloc>(
      () => _i3.ApplicationBloc(get<_i4.IApplicationRepository>()));
  gh.lazySingleton<_i5.IAuthRepository>(() => _i6.ApiAuthRepository());
  gh.lazySingleton<_i7.NavigationBloc>(() => _i7.NavigationBloc());
  gh.factory<_i8.SignInFormBloc>(
      () => _i8.SignInFormBloc(get<_i5.IAuthRepository>()));
  gh.lazySingleton<_i3.IAuthRepository>(() => _i4.ApiAuthRepository());
  gh.factory<_i5.RegisterFormBloc>(
      () => _i5.RegisterFormBloc(get<_i3.IAuthRepository>()));
  gh.factory<_i6.SignInFormBloc>(
      () => _i6.SignInFormBloc(get<_i3.IAuthRepository>()));
  return get;
}
