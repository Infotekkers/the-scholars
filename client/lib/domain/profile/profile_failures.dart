import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_failures.freezed.dart';

@freezed
abstract class ApplicationProfileFailure with _$ApplicationProfileFailure {
  const factory ApplicationProfileFailure.emptyApplicationProfile() =
      _EmptyApplicationProfile;

  const factory ApplicationProfileFailure.incompleteApplicationProfile() =
      _IncompleteApplicationProfile;

  const factory ApplicationProfileFailure.databaseError() =
      _DatabaseErrorApplicationProfile;
}
