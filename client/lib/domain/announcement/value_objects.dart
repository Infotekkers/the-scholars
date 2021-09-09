import 'package:client/domain/announcement/value_validators.dart';
import 'package:client/domain/core/failures.dart';
import 'package:client/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';

class AnnouncementTitle extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 50;

  factory AnnouncementTitle(String announceStr) {
    assert(announceStr != null);
    return AnnouncementTitle._(
      validateMaxStringLength(announceStr, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLine),
    );
  }

  const AnnouncementTitle._(this.value);
}

class AnnouncementBody extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 500;

  factory AnnouncementBody(String announceStr) {
    assert(announceStr != null);
    return AnnouncementBody._(
      validateMaxStringLength(announceStr, maxLength)
          .flatMap(validateStringNotEmpty),
    );
  }

  const AnnouncementBody._(this.value);
}
