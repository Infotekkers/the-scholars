// Imports the Flutter Driver API.
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Profile Section', () {
    // Login Values
    final userNameFinder = find.byValueKey("loginPageUserName");
    final passwordFinder = find.byValueKey("loginPagePassword");
    final loginPageLoginFinder = find.byValueKey("loginPageLoginButton");

// Profile Values
    final profilePageFullNameFinder =
        find.byValueKey("profilePageFullNameInput");
    final profilePageGenderFinder =
        find.byValueKey("profilePageGenderMaleInput");
    final profilePagePhoneNumberInput =
        find.byValueKey("profilePagePhoneNumberInput");
    final profilePageSaveButton = find.byValueKey("profilePageSaveButton");

    final newApplicationFabFinder = find.byValueKey("homePageFAB");

    final firstApplicationPageSubmitButtonFinder =
        find.byValueKey("firstApplicationPageSubmitButton");

    late FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      driver.close();
    });

    test("Login and Complete Profile", () async {
      // Enter Username
      await driver.tap(userNameFinder);
      await driver.enterText("userone@gmail.com");

      // Enter Password
      await driver.tap(passwordFinder);
      await driver.enterText("Testing@123");

      // Login
      await driver.tap(loginPageLoginFinder);

      // Input full name
      await driver.tap(profilePageFullNameFinder);
      await driver.enterText("Intergration Testing");

      // Input gender
      await driver.tap(profilePageGenderFinder);

      // Input Phone Number
      await driver.tap(profilePagePhoneNumberInput);
      await driver.enterText("123456789");

      // Scroll
      await driver.scrollIntoView(profilePageSaveButton);

      // Save Button
      await driver.tap(profilePageSaveButton);

      //
      await driver.tap(newApplicationFabFinder);

      //
      await driver.scrollIntoView(firstApplicationPageSubmitButtonFinder);
      await driver.tap(firstApplicationPageSubmitButtonFinder);
    });
  });
}
