// Mocks generated by Mockito 5.0.15 from annotations
// in client/test/application/application/applications_overview_watcher_bloc_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;

import 'package:client/domain/application/application.dart' as _i8;
import 'package:client/domain/application/application_failure.dart' as _i6;
import 'package:client/domain/application/application_highlight.dart' as _i7;
import 'package:client/domain/application/value_objects.dart' as _i9;
import 'package:client/infrastructure/application/api_admin_application_repository.dart'
    as _i3;
import 'package:dartz/dartz.dart' as _i2;
import 'package:http/http.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeEither_0<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

/// A class which mocks [ApiAdminApplicationRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockApiAdminApplicationRepository extends _i1.Mock
    implements _i3.ApiAdminApplicationRepository {
  MockApiAdminApplicationRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  set client(_i4.Client? _client) =>
      super.noSuchMethod(Invocation.setter(#client, _client),
          returnValueForMissingStub: null);
  @override
  _i5.Future<_i2.Either<_i6.ApplicationFailure, List<_i7.ApplicationHighlight>>>
      getServerApplicationsAdmin() => (super.noSuchMethod(
          Invocation.method(#getServerApplicationsAdmin, []),
          returnValue: Future<_i2.Either<_i6.ApplicationFailure, List<_i7.ApplicationHighlight>>>.value(
              _FakeEither_0<_i6.ApplicationFailure,
                  List<_i7.ApplicationHighlight>>())) as _i5
          .Future<_i2.Either<_i6.ApplicationFailure, List<_i7.ApplicationHighlight>>>);
  @override
  _i5.Future<_i2.Either<_i6.ApplicationFailure, _i8.Application>>
      getServerApplicationAdmin({_i9.ApplicationId? applicationId}) =>
          (super.noSuchMethod(
              Invocation.method(#getServerApplicationAdmin, [],
                  {#applicationId: applicationId}),
              returnValue:
                  Future<_i2.Either<_i6.ApplicationFailure, _i8.Application>>.value(
                      _FakeEither_0<_i6.ApplicationFailure, _i8.Application>())) as _i5
              .Future<_i2.Either<_i6.ApplicationFailure, _i8.Application>>);
  @override
  _i5.Future<_i2.Either<_i6.ApplicationFailure, _i2.Unit>>
      updateServerApplicationAdmin(
              {_i7.ApplicationHighlight? applicationHighlight}) =>
          (super.noSuchMethod(
              Invocation.method(#updateServerApplicationAdmin, [],
                  {#applicationHighlight: applicationHighlight}),
              returnValue:
                  Future<_i2.Either<_i6.ApplicationFailure, _i2.Unit>>.value(
                      _FakeEither_0<_i6.ApplicationFailure, _i2.Unit>())) as _i5
              .Future<_i2.Either<_i6.ApplicationFailure, _i2.Unit>>);
  @override
  String toString() => super.toString();
}