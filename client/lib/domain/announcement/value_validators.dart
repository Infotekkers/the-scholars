import 'package:client/domain/core/failures.dart';
import 'package:dartz/dartz.dart';

Either<ValueFailure<String>, String> validateMaxStringLength(
  String announceStr,
  int maxLength,
) {
  if (announceStr.length <= maxLength) {
    return right(announceStr);
  } else {
    return left(
        ValueFailure.exceedingLength(failedValue: announceStr, max: maxLength));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(
    String announceStr) {
  if (announceStr.isNotEmpty) {
    return right(announceStr);
  } else {
    return left(ValueFailure.empty(failedValue: announceStr));
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String announceStr) {
  if (announceStr.contains('\n')) {
    return left(ValueFailure.multiline(failedValue: announceStr));
  } else {
    return right(announceStr);
  }
}

// Either<ValueFailure<String>, String> validateDate(String dateStr) {
//   const dateRegex =
//       r'''/^(\d{4})-(\d{2})-(\d{2}) (\d{2}):(\d{2}):(\d{2})$/''';

//   if (RegExp(dateRegex).hasMatch(dateStr)) {
//     return right(dateStr);
//   } else {
//     return left(ValueFailure.invalidDate(failedValue: dateStr));
//   }
// }
