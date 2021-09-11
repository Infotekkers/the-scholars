// Imports the Flutter Driver API
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Admin Side', () {
    // Login Page Values
    final loginPageUserNameFinder = find.byValueKey("loginPageUserName");
    final loginPagePasswordFinder = find.byValueKey("loginPagePassword");
    final loginPageLoginButtonFinder = find.byValueKey("loginPageLoginButton");
    final loginPageRegisterButtonFinder =
        find.byValueKey("loginPageRegisterButton");

    final loginViewFinder = find.byValueKey("loginPageView");

    // Register Page Values
    final registerPageFullNameFinder =
        find.byValueKey("registerPageFullNameInput");
    final registerPageEmailFinder = find.byValueKey("registerPageEmailInput");
    final registerPagePasswordFinder =
        find.byValueKey("registerPagePasswordInput");
    final registerPageRoleFinder = find.byValueKey("registerPageRoleUserInput");
    final registerPageRegisterButtonFinder =
        find.byValueKey("registerPageRegisterButton");
    final registerPageLoginButtonFinder =
        find.byValueKey("registerPageLoginButton");
    final registerViewFinder = find.byValueKey("registerPageView");
    final registerPageRoleAdminFinder =
        find.byValueKey("registerPageRoleAdminInput");

    // Profile Page Values
    // Profile Values
    final profilePageFullNameFinder =
        find.byValueKey("profilePageFullNameInput");
    final profilePageGenderFinder =
        find.byValueKey("profilePageGenderMaleInput");
    final profilePagePhoneNumberInput =
        find.byValueKey("profilePagePhoneNumberInput");
    final profilePageSaveButton = find.byValueKey("profilePageSaveButton");

    // Navigator Values
    final navigatorPageIndexZeroFinder =
        find.byValueKey("navigatorPageIndexZero");
    final navigatorPageIndexOneFinder =
        find.byValueKey("navigatorPageIndexOne");
    final navigatorPageIndexThreeFinder =
        find.byValueKey("navigatorPageIndexThree");

    // Profile Edit Page Values
    final profileEditPageGenderInputFinder =
        find.byValueKey("profileEditPageGenderFemaleInput");
    final profileEditPageCountryFinder =
        find.byValueKey("profileEditPageLocationDropdown");
    final profileEditPagePhoneCodeFinder =
        find.byValueKey("profilEditPagePhoneCodeDropdown");
    final profileEditPageSaveButtonFinder =
        find.byValueKey("profileEditPageSaveButton");
    final profileEditPageListViewFinder =
        find.byValueKey("editProfilePageListView");

    // Home Page
    final homePageNewApplicationFabButtonFinder =
        find.byValueKey("homePageFAB");
    final firstApplicationPageSubmitButtonFinder =
        find.byValueKey("firstApplicationPageSubmitButton");

    final logoutButtonFinder = find.byValueKey("credentialsLogoutButton");

    final newAnnouncementButtonFinder =
        find.byValueKey("newAnnouncementsButton");

// announcement Page
    final announcementPageTitleFinder =
        find.byValueKey("announcementTitleInput");
    final announcementPageBodyFinder =
        find.byValueKey("announcementPageBodyInput");
    final announcementPageButtonFinder =
        find.byValueKey("announcementPagePostButton");
    final accouncementFabFinder = find.byValueKey("announcmentFabButton");
    // Announcmenet
    late FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      driver.close();
    });

    test("Admin Register Login Create Announcment Logout", () async {
      await driver.waitFor(loginPageLoginButtonFinder);

      await driver.scrollUntilVisible(
          loginViewFinder, loginPageRegisterButtonFinder,
          dyScroll: -100);
      // Go to register Page
      await driver.tap(loginPageRegisterButtonFinder);

      // Input Username
      await driver.tap(registerPageFullNameFinder);
      await driver.enterText("User Admin");

      // Input Email
      await driver.tap(registerPageEmailFinder);
      await driver.enterText("useradmin@gmail.com");

      // Scroll
      await driver.scrollUntilVisible(
          registerViewFinder, registerPagePasswordFinder,
          dyScroll: -60);

      // Input Password
      await driver.tap(registerPagePasswordFinder);
      await driver.enterText("Testing@123");

      // Select Role
      await driver.tap(registerPageRoleAdminFinder);

      // Scroll
      await driver.scrollUntilVisible(
          registerViewFinder, registerPageRegisterButtonFinder,
          dyScroll: -60);

      // Regitser button
      await driver.tap(registerPageRegisterButtonFinder);

      //
      await driver.waitFor(newAnnouncementButtonFinder);
      await driver.tap(newAnnouncementButtonFinder);

      await driver.waitFor(accouncementFabFinder);
      await driver.tap(accouncementFabFinder);

      await driver.waitFor(announcementPageTitleFinder);
      await driver.tap(announcementPageTitleFinder);
      await driver.enterText("Integration Testing");

      await driver.tap(announcementPageBodyFinder);
      await driver.enterText("This is a test for integration testing");

      await driver.tap(announcementPageButtonFinder);
    });
  });
}
