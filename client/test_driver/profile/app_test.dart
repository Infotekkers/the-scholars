// Imports the Flutter Driver API
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Profile Section', () {
    // Login Page Values
    final loginPageUserNameFinder = find.byValueKey("loginPageUserName");
    final loginPagePasswordFinder = find.byValueKey("loginPagePassword");
    final loginPageLoginButtonFinder = find.byValueKey("loginPageLoginButton");
    final loginPageRegisterButtonFinder =
        find.byValueKey("loginPageRegisterButton");

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

    late FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      driver.close();
    });

    test("Register User and Login fill out profile and Edit Profile", () async {
      // Go to register Page
      await driver.tap(loginPageRegisterButtonFinder);

      // Input Username
      await driver.tap(registerPageFullNameFinder);
      await driver.enterText("User Two");

      // Input Email
      await driver.tap(registerPageEmailFinder);
      await driver.enterText("usertwo@gmail.com");

      // Input Password
      await driver.tap(registerPagePasswordFinder);
      await driver.enterText("Testing@123");

      // Select Role
      await driver.tap(registerPageRoleFinder);

      // Regitser button
      await driver.tap(registerPageRegisterButtonFinder);

      // Put in Username
      await driver.tap(loginPageUserNameFinder);
      await driver.enterText("usertwo@gmail.com");

      // Enter password
      await driver.tap(loginPagePasswordFinder);
      await driver.enterText("Testing@123");

      // Enter Login button
      await driver.tap(loginPageLoginButtonFinder);

      // Input full name
      await driver.tap(profilePageFullNameFinder);
      await driver.enterText("Integration testing");

      // Input gender
      await driver.tap(profilePageGenderFinder);

      // Input Phone Number
      await driver.tap(profilePagePhoneNumberInput);
      await driver.enterText("123456789");

      // Scroll
      await driver.scrollIntoView(profilePageSaveButton);

      // Save Button
      await driver.tap(profilePageSaveButton);

      // navigate to edit page
      await driver.tap(navigatorPageIndexOneFinder);

      // Edit Gender
      await driver.tap(profileEditPageGenderInputFinder);

      // Edit Location
      await driver.tap(profileEditPageCountryFinder);
      await driver.waitFor(find.text("Kenya"));
      await driver.tap(find.text("Kenya"));

      await driver.scrollUntilVisible(
          profileEditPageListViewFinder, profileEditPagePhoneCodeFinder,
          dyScroll: -80);

      // Edit Phone code
      await driver.tap(profileEditPagePhoneCodeFinder);
      await driver.waitFor(find.text("+254"));
      await driver.tap(find.text("+254"));

      // Submit Profile
      await driver.scrollUntilVisible(
          profileEditPageListViewFinder, profileEditPageSaveButtonFinder,
          dyScroll: -100);
      await driver.tap(profileEditPageSaveButtonFinder);
    });
  });
}
