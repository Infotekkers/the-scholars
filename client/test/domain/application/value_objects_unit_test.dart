import 'package:client/domain/application/value_objects.dart';
import 'package:client/domain/core/failures.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // School Transcript Test
  test("School Transcript should return valid School Transcript", () {
    final SchoolTranscript schoolTranscript =
        SchoolTranscript(schoolTranscriptPath: "data/path/android/sample.pdf");
    expect(schoolTranscript.value.fold((l) => l, (r) => r),
        "data/path/android/sample.pdf");
  });

  test("School Transcript should return Empty Value Failure", () {
    final SchoolTranscript schoolTranscript =
        SchoolTranscript(schoolTranscriptPath: "");
    expect(
      schoolTranscript.value.fold((l) => l, (r) => r),
      const ValueFailure.emptyFile(failedValue: "School Transcript"),
    );
  });

  test("School Transcript should return Invalid File Format Failure", () {
    final SchoolTranscript schoolTranscript =
        SchoolTranscript(schoolTranscriptPath: "data/path/android/sample.jpg");
    expect(
      schoolTranscript.value.fold((l) => l, (r) => r),
      const ValueFailure.invalidFileFormat(failedValue: "School Transcript"),
    );
  });

  // Main Essay Test
  test("Main Essay should return a valid Main Essay", () {
    final MainEssay mainEssay =
        MainEssay(mainEssayPath: "data/path/android/sample.pdf");
    expect(mainEssay.value.fold((l) => l, (r) => r),
        "data/path/android/sample.pdf");
  });

  test("Main Essay should return a Empty file value failure", () {
    final MainEssay mainEssay = MainEssay(mainEssayPath: "");
    expect(
      mainEssay.value.fold((l) => l, (r) => r),
      const ValueFailure.emptyFile(failedValue: "Main Essay"),
    );
  });

  test("Main Essay should return a Invalid Format value failure", () {
    final MainEssay mainEssay =
        MainEssay(mainEssayPath: "data/path/android/sample.pddfff");
    expect(
      mainEssay.value.fold((l) => l, (r) => r),
      const ValueFailure.invalidFileFormat(failedValue: "Main Essay"),
    );
  });

  // Extra Certification Test
  test("Extra Certification should return a valid Extra Certification", () {
    final ExtraCertification extraCertification = ExtraCertification(
        extraCertificationPath: "data/path/android/sample.pdf");
    expect(
      extraCertification.value.fold((l) => l, (r) => r),
      "data/path/android/sample.pdf",
    );
  });

  test("Extra Certification should return a Empty File Value failure", () {
    final ExtraCertification extraCertification =
        ExtraCertification(extraCertificationPath: "");
    expect(
      extraCertification.value.fold((l) => l, (r) => r),
      const ValueFailure.emptyFile(failedValue: "Extra Certification"),
    );
  });

  test("Extra Certification should return a Invalid File value failure", () {
    final ExtraCertification extraCertification = ExtraCertification(
        extraCertificationPath: "data/path/android/sample.doc");
    expect(
      extraCertification.value.fold((l) => l, (r) => r),
      const ValueFailure.invalidFileFormat(failedValue: "Extra Certification"),
    );
  });

  // Recommendation Letter Test
  test("Recommendation Letter should return a valid Recommendation Letter", () {
    final RecomendationLetter recomendationLetter = RecomendationLetter(
        recomendationLetterPath: "data/path/android/sample.pdf");
    expect(
      recomendationLetter.value.fold((l) => l, (r) => r),
      "data/path/android/sample.pdf",
    );
  });

  test("Recommendation Letter should return a empty file value failure", () {
    final RecomendationLetter recomendationLetter =
        RecomendationLetter(recomendationLetterPath: "");
    expect(
      recomendationLetter.value.fold((l) => l, (r) => r),
      const ValueFailure.emptyFile(failedValue: "Reccomendation Letter"),
    );
  });

  test("Recommendation Letter should return a invalid file value failure", () {
    final RecomendationLetter recomendationLetter =
        RecomendationLetter(recomendationLetterPath: "testdoc");
    expect(
      recomendationLetter.value.fold((l) => l, (r) => r),
      const ValueFailure.invalidFileFormat(
          failedValue: "Reccomendation Letter"),
    );
  });

  // Proficiency Test
  test("Proficiency Test Should return a valid value", () {
    final ProficencyTest proficencyTest = ProficencyTest(
        proficiencyUrl: "https://github.com/Infotekkers/the-scholars/pulls");
    expect(proficencyTest.value.fold((l) => l, (r) => r),
        "https://github.com/Infotekkers/the-scholars/pulls");
  });

  test("Proficiency Test Should return a invalid url value failure", () {
    final ProficencyTest proficencyTest = ProficencyTest(
        proficiencyUrl: "github.com/Infotekkers/the-scholars/pulls");
    expect(
      proficencyTest.value.fold((l) => l, (r) => r),
      const ValueFailure.invalidProficencyTestUrl(),
    );
  });

  test("Proficiency Test Should return a empty url value failure", () {
    final ProficencyTest proficencyTest = ProficencyTest(proficiencyUrl: "");
    expect(
      proficencyTest.value.fold((l) => l, (r) => r),
      const ValueFailure.emptyProficencyTestUrl(),
    );
  });

  // Military Family Status Test
  test("MilitaryFamilyStatus Should return a valid value-NO", () {
    final MilitaryFamilyStatus militaryFamilyStatus =
        MilitaryFamilyStatus(militaryFamilyStatus: "no");
    expect(
      militaryFamilyStatus.value.fold((l) => l, (r) => r),
      "no",
    );
  });

  test("MilitaryFamilyStatus Should return a valid value-Yes", () {
    final MilitaryFamilyStatus militaryFamilyStatus =
        MilitaryFamilyStatus(militaryFamilyStatus: "yes");
    expect(
      militaryFamilyStatus.value.fold((l) => l, (r) => r),
      "yes",
    );
  });

  test("MilitaryFamilyStatus Should return a invalid value failure", () {
    final MilitaryFamilyStatus militaryFamilyStatus =
        MilitaryFamilyStatus(militaryFamilyStatus: "noo");
    expect(
      militaryFamilyStatus.value.fold((l) => l, (r) => r),
      const ValueFailure.invalidMilitaryFamilyStatus(),
    );
  });

  // University Family Status Test
  test("UniversityFamilyStatus Should return a valid value-NO", () {
    final UniversityFamilyStatus universityFamilyStatus =
        UniversityFamilyStatus(universityFamilyStatus: "no");
    expect(
      universityFamilyStatus.value.fold((l) => l, (r) => r),
      "no",
    );
  });

  test("UniversityFamilyStatus Should return a valid value-Yes", () {
    final UniversityFamilyStatus universityFamilyStatus =
        UniversityFamilyStatus(universityFamilyStatus: "yes");
    expect(
      universityFamilyStatus.value.fold((l) => l, (r) => r),
      "yes",
    );
  });

  test("UniversityFamilyStatus Should return a invalid value failure", () {
    final UniversityFamilyStatus universityFamilyStatus =
        UniversityFamilyStatus(universityFamilyStatus: "noo");
    expect(
      universityFamilyStatus.value.fold((l) => l, (r) => r),
      const ValueFailure.invalidUniversityFamilyStatus(),
    );
  });

  // Extra Essay Test
  test("Extra Should return a empty value failure", () {
    final ExtraEssay extraEssay = ExtraEssay(extraEssayPath: "");
    expect(
      extraEssay.value.fold((l) => l, (r) => r),
      const ValueFailure.emptyExtraEssay(),
    );
  });

  test("Extra Should return a very short essay value failure", () {
    final ExtraEssay extraEssay =
        ExtraEssay(extraEssayPath: "hello this is an essay test");
    expect(
      extraEssay.value.fold((l) => l, (r) => r),
      const ValueFailure.veryShortExtraEssay(),
    );
  });

  test("Extra Should return a valid value", () {
    final ExtraEssay extraEssay = ExtraEssay(
        extraEssayPath:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's");
    expect(
      extraEssay.value.fold((l) => l, (r) => r),
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
    );
  });

  test("Extra Should return a exceeding lentgh value failure", () {
    final ExtraEssay extraEssay = ExtraEssay(
        extraEssayPath:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical");
    expect(
      extraEssay.value.fold((l) => l, (r) => r),
      const ValueFailure.exceedingLengthExtraEssay(),
    );
  });

  // Department Selection Test
}
