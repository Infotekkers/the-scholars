import 'package:bloc_test/bloc_test.dart';
import 'package:client/application/application/application_bloc.dart';
import 'package:client/domain/application/value_objects.dart';
import 'package:client/domain/core/failures.dart';
import 'package:client/infrastructure/application/api_application_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockApiApplicationRepository extends Mock
    implements ApiApplicationRepository {}

void main() {
  final MockApiApplicationRepository mockApiApplicationRepository =
      MockApiApplicationRepository();
  group("Application Bloc Test", () {
    blocTest<ApplicationBloc, ApplicationState>(
      "should emit nothing",
      build: () => ApplicationBloc(mockApiApplicationRepository),
      expect: () => const [],
    );

    // Initial
    blocTest<ApplicationBloc, ApplicationState>(
      "should emit initial again",
      build: () => ApplicationBloc(mockApiApplicationRepository),
      act: (bloc) => bloc.add(const ApplicationEvent.initialEvent()),
      expect: () => const [],
    );

    // School Transcript
    blocTest<ApplicationBloc, ApplicationState>(
      "should emit school transcript changed",
      build: () => ApplicationBloc(mockApiApplicationRepository),
      act: (bloc) => bloc.add(
        const ApplicationEvent.schoolTranscriptChanged("path/data/sample.pdf"),
      ),
      expect: () {
        ApplicationState expectedState = ApplicationState.initial();
        expectedState = expectedState.copyWith(
          showErrorMessages: true,
          schoolTranscript:
              SchoolTranscript(schoolTranscriptPath: "path/data/sample.pdf"),
        );
        return [expectedState];
      },
    );

    // Main Essay
    blocTest<ApplicationBloc, ApplicationState>(
      "should emit main essay changed",
      build: () => ApplicationBloc(mockApiApplicationRepository),
      act: (bloc) => bloc.add(
        const ApplicationEvent.mainEssayChanged('/path/data/test/sample.pdf'),
      ),
      expect: () {
        ApplicationState expectedState = ApplicationState.initial();
        expectedState = expectedState.copyWith(
          showErrorMessages: true,
          mainEssay: MainEssay(
            mainEssayPath: "/path/data/test/sample.pdf",
          ),
        );

        return [expectedState];
      },
    );

    // Recommendation Letter
    blocTest<ApplicationBloc, ApplicationState>(
      "should emit reccomendation letter changed",
      build: () => ApplicationBloc(mockApiApplicationRepository),
      act: (bloc) => bloc.add(
        const ApplicationEvent.reccomnedationLetterChanged(
            '/path/data/test/sample.pdf'),
      ),
      expect: () {
        ApplicationState expectedState = ApplicationState.initial();
        expectedState = expectedState.copyWith(
            showErrorMessages: true,
            recomendationLetter: RecomendationLetter(
                recomendationLetterPath: '/path/data/test/sample.pdf'));

        return [expectedState];
      },
    );

    // Extra Essay
    blocTest<ApplicationBloc, ApplicationState>(
      "should emit extra essay changed",
      build: () => ApplicationBloc(mockApiApplicationRepository),
      act: (bloc) => bloc.add(
        const ApplicationEvent.extraEssayChanged(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s"),
      ),
      expect: () {
        ApplicationState expectedState = ApplicationState.initial();
        expectedState = expectedState.copyWith(
          showErrorMessages: true,
          extraEssay: ExtraEssay(
              extraEssayPath:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s"),
        );

        return [expectedState];
      },
    );

    // Military Status
    blocTest<ApplicationBloc, ApplicationState>(
      "should emit military family status changed",
      build: () => ApplicationBloc(mockApiApplicationRepository),
      act: (bloc) => bloc.add(
        const ApplicationEvent.militaryStatusChanged("yes"),
      ),
      expect: () {
        ApplicationState expectedState = ApplicationState.initial();
        expectedState = expectedState.copyWith(
          showErrorMessages: true,
          militaryFamilyStatus:
              MilitaryFamilyStatus(militaryFamilyStatus: "yes"),
        );

        return [expectedState];
      },
    );
    // Univeristy Status
    blocTest<ApplicationBloc, ApplicationState>(
      "should emit university family status changed",
      build: () => ApplicationBloc(mockApiApplicationRepository),
      act: (bloc) => bloc.add(
        const ApplicationEvent.universityStatusChanged("yes"),
      ),
      expect: () {
        ApplicationState expectedState = ApplicationState.initial();
        expectedState = expectedState.copyWith(
          showErrorMessages: true,
          universityFamilyStatus:
              UniversityFamilyStatus(universityFamilyStatus: "yes"),
        );

        return [expectedState];
      },
    );

    // Profieciency URL
    blocTest<ApplicationBloc, ApplicationState>(
      "should emit proficency url changed",
      build: () => ApplicationBloc(mockApiApplicationRepository),
      act: (bloc) => bloc.add(
        const ApplicationEvent.proficiencyUrlChanged(
            "https://github.com/Infotekkers/the-scholars"),
      ),
      expect: () {
        ApplicationState expectedState = ApplicationState.initial();
        expectedState = expectedState.copyWith(
          showErrorMessages: true,
          proficencyTest: ProficencyTest(
              proficiencyUrl: "https://github.com/Infotekkers/the-scholars"),
        );

        return [expectedState];
      },
    );

    // Extra Certification
    blocTest<ApplicationBloc, ApplicationState>(
      "should emit extra certification changed",
      build: () => ApplicationBloc(mockApiApplicationRepository),
      act: (bloc) => bloc.add(
        const ApplicationEvent.extraCertificationChanged(
            '/path/data/test/sample.pdf'),
      ),
      expect: () {
        ApplicationState expectedState = ApplicationState.initial();
        expectedState = expectedState.copyWith(
          showErrorMessages: true,
          extraCertification: ExtraCertification(
              extraCertificationPath: "/path/data/test/sample.pdf"),
        );

        return [expectedState];
      },
    );

    // Submit
    // blocTest<ApplicationBloc, ApplicationState>(
    //   "should submit launched",
    //   build: () => ApplicationBloc(mockApiApplicationRepository),
    //   act: (bloc) => bloc.add(
    //     const ApplicationEvent.submitApplicationClicked(),
    //   ),
    //   expect: () {
    //     ApplicationState expectedState = ApplicationState.initial();
    //     ApplicationState secondExpectedState = ApplicationState.initial();
    //     expectedState = expectedState.copyWith(
    //       schoolTranscript:
    //           SchoolTranscript(schoolTranscriptPath: "Please Select a File"),
    //       mainEssay: MainEssay(mainEssayPath: "Please Select a File"),
    //       extraEssay: ExtraEssay(extraEssayPath: "essay"),
    //       proficencyTest: ProficencyTest(proficiencyUrl: "url"),
    //       extraCertification: ExtraCertification(
    //           extraCertificationPath: "Please Select a File"),
    //       recomendationLetter: RecomendationLetter(
    //           recomendationLetterPath: "Please Select a File"),
    //       militaryFamilyStatus:
    //           MilitaryFamilyStatus(militaryFamilyStatus: "no"),
    //       universityFamilyStatus:
    //           UniversityFamilyStatus(universityFamilyStatus: "no"),
    //       showErrorMessages: true,
    //       valueFailureOrSuccess: some(
    //         left(
    //           const ValueFailure.invalidProficencyTestUrl(),
    //         ),
    //       ),
    //     );

    //     secondExpectedState = secondExpectedState.copyWith(
    //       schoolTranscript:
    //           SchoolTranscript(schoolTranscriptPath: "Please Select a File"),
    //       mainEssay: MainEssay(mainEssayPath: "Please Select a File"),
    //       extraEssay: ExtraEssay(extraEssayPath: "essay"),
    //       proficencyTest: ProficencyTest(proficiencyUrl: "url"),
    //       extraCertification: ExtraCertification(
    //           extraCertificationPath: "Please Select a File"),
    //       recomendationLetter: RecomendationLetter(
    //           recomendationLetterPath: "Please Select a File"),
    //       militaryFamilyStatus:
    //           MilitaryFamilyStatus(militaryFamilyStatus: "no"),
    //       universityFamilyStatus:
    //           UniversityFamilyStatus(universityFamilyStatus: "no"),
    //       showErrorMessages: false,
    //       valueFailureOrSuccess: some(
    //         left(
    //           const ValueFailure.generalError(),
    //         ),
    //       ),
    //     );

    //     return [expectedState, secondExpectedState];
    //   },
    // );

    // First Page Complete

    // Check Cache
  });
}
