import 'package:client/domain/core/failures.dart';
import 'package:dartz/dartz.dart';

Either<ValueFailure<String>, String> validateApplicationId(
    {required String applicationId}) {
  // ignore: todo
  // TODO : Implement Validation
  return right(applicationId);
}

// General Selected File Validator
Either<ValueFailure<String>, String> validateUploadFile(
    {required String uploadFilePath, required String ifFailedValue}) {
  if (uploadFilePath == "") {
    return left(
      ValueFailure.emptyFile(failedValue: ifFailedValue),
    );
  } else if (uploadFilePath.split(".").last != "pdf") {
    if (uploadFilePath == "Please Select a File") {
      return right(uploadFilePath);
    } else {
      return left(
        ValueFailure.invalidFileFormat(failedValue: ifFailedValue),
      );
    }
  }
  return right(uploadFilePath);
}

Either<ValueFailure<String>, String> validateProficencyTest(
    {required String proficiencyUrl}) {
  if (proficiencyUrl == "") {
    return left(
      const ValueFailure.emptyProficencyTestUrl(),
    );
  } else if (!Uri.parse(proficiencyUrl).isAbsolute) {
    return left(
      const ValueFailure.invalidProficencyTestUrl(),
    );
  }
  return right(proficiencyUrl);
}

Either<ValueFailure<String>, String> validateMilitaryFamilyStatus(
    {required String militaryFamilyStatus}) {
  if (!(militaryFamilyStatus == 'no' || militaryFamilyStatus == "yes")) {
    return left(
      const ValueFailure.invalidMilitaryFamilyStatus(),
    );
  }
  return right(militaryFamilyStatus);
}

Either<ValueFailure<String>, String> validateUniversityFamilyStatus(
    {required String universityFamilyStatus}) {
  if (!(universityFamilyStatus == "no" || universityFamilyStatus == "yes")) {
    return left(
      const ValueFailure.invalidUniversityFamilyStatus(),
    );
  }
  return right(universityFamilyStatus);
}

Either<ValueFailure<String>, String> validateExtraEssay(
    {required String extraEssay}) {
  // empty
  if (extraEssay.isEmpty) {
    return left(
      const ValueFailure.emptyExtraEssay(),
    );
  }
  // short essay
  else if (extraEssay.length < 50) {
    return left(
      const ValueFailure.veryShortExtraEssay(),
    );
  }
  // very long essay
  else if (extraEssay.length > 350) {
    return left(
      const ValueFailure.exceedingLengthExtraEssay(),
    );
  } else {
    return right(extraEssay);
  }
}

Either<ValueFailure<String>, List> validateDepartmentSelection(
    {required List departmentSelection}) {
  // ignore: todo
  // TODO : Implement Validation
  return right([]);
}

Either<ValueFailure<String>, String> validateAdmissionStatus(String admissionStatusStr) {
  const validStatus = ["", "pending", "accepted", "rejected"];

  if (validStatus.contains(admissionStatusStr)) {
    return right(admissionStatusStr);
  }
  return left(ValueFailure.invalidAdmissionStatus(failedValue: admissionStatusStr));
}
