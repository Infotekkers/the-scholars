import 'package:client/domain/application/value_validators.dart';
import 'package:client/domain/core/failures.dart';
import 'package:client/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';

// Value object for Application id
class ApplicationId extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ApplicationId({required String applicationId}) {
    return ApplicationId._(
      value: validateApplicationId(applicationId: applicationId),
    );
  }

  const ApplicationId._({required this.value});
}

// Value Object for Transcript AS FILE PATH
class SchoolTranscript extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;

  factory SchoolTranscript({required String schoolTranscriptPath}) {
    return SchoolTranscript._(
      value: validateUploadFile(
          uploadFilePath: schoolTranscriptPath,
          ifFailedValue: "School Transcript"),
    );
  }

  const SchoolTranscript._({required this.value});
}

// Value Object for Main Essay AS FILE PATH
class MainEssay extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;

  factory MainEssay({required String mainEssayPath}) {
    return MainEssay._(
      value: validateUploadFile(
          uploadFilePath: mainEssayPath, ifFailedValue: "Main Essay"),
    );
  }

  const MainEssay._({required this.value});
}

// Value Object for Certification as PATH
class ExtraCertification extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ExtraCertification({required String extraCertificationPath}) {
    return ExtraCertification._(
      value: validateUploadFile(
          uploadFilePath: extraCertificationPath,
          ifFailedValue: "Extra Certification"),
    );
  }

  const ExtraCertification._({required this.value});
}

// Value Object for Recommedation Letter AS FILE PATH
class RecomendationLetter extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;

  factory RecomendationLetter({required String recomendationLetterPath}) {
    return RecomendationLetter._(
      value: validateUploadFile(
          uploadFilePath: recomendationLetterPath,
          ifFailedValue: "Reccomendation Letter"),
    );
  }

  const RecomendationLetter._({required this.value});
}

// Value Object for SAT/TOEFL as URI
class ProficencyTest extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ProficencyTest({required String proficiencyUrl}) {
    return ProficencyTest._(
      value: validateProficencyTest(proficiencyUrl: proficiencyUrl),
    );
  }

  const ProficencyTest._({required this.value});
}

// Value Object for Military Family Status
class MilitaryFamilyStatus extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;

  factory MilitaryFamilyStatus({required String militaryFamilyStatus}) {
    return MilitaryFamilyStatus._(
      value: validateMilitaryFamilyStatus(
          militaryFamilyStatus: militaryFamilyStatus),
    );
  }

  const MilitaryFamilyStatus._({required this.value});
}

// Value Object for Uni Family Status
class UniversityFamilyStatus extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniversityFamilyStatus({required String universityFamilyStatus}) {
    return UniversityFamilyStatus._(
      value: validateUniversityFamilyStatus(
          universityFamilyStatus: universityFamilyStatus),
    );
  }

  const UniversityFamilyStatus._({required this.value});
}

// Value Object for Extra Essay
class ExtraEssay extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ExtraEssay({required String extraEssayPath}) {
    return ExtraEssay._(
      value: validateExtraEssay(extraEssay: extraEssayPath),
    );
  }

  const ExtraEssay._({required this.value});
}

// Value Object for Department Selction AS ARRAY
class DepartmentSelection extends ValueObject {
  @override
  final Either<ValueFailure<String>, List> value;

  factory DepartmentSelection({required List departmentSelection}) {
    return DepartmentSelection._(
      value:
          validateDepartmentSelection(departmentSelection: departmentSelection),
    );
  }

  const DepartmentSelection._({required this.value});
}
