// Imports the Flutter Driver API
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Profile Section', () {
    // Get All Values

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

    late FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      driver.close();
    });

    test("Register User and Login Invalid credentials", () async {
      // Go to register Page
      await driver.tap(loginPageRegisterButtonFinder);

      // Input Username
      await driver.tap(registerPageFullNameFinder);
      await driver.enterText("User One");

      // Input Email
      await driver.tap(registerPageEmailFinder);
      await driver.enterText("userone@gmail.com");

      // Input Password
      await driver.tap(registerPagePasswordFinder);
      await driver.enterText("Testing@123");

      // Select Role
      await driver.tap(registerPageRoleFinder);

      // Regitser button
      await driver.tap(registerPageRegisterButtonFinder);

      // Put in Username
      await driver.tap(loginPageUserNameFinder);
      await driver.enterText("useronee@gmail.com");

      // Enter password
      await driver.tap(loginPagePasswordFinder);
      await driver.enterText("Testing@123");

      // Enter Login button
      await driver.tap(loginPageLoginButtonFinder);
    });

    test("Register User and Login success", () async {
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
    });
  });
}
