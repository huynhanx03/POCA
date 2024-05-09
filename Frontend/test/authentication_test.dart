import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';
import 'package:poca/services/logic/authentication_service.dart';

final DateFormat dateFormat = DateFormat('dd/MM/yyyy');

void main() {
  group('Authentication Service -', () {
    group('Sign in -', () {
      test('Username is empty', () async {
        // ARRANGE
        final username = "";
        final password = "password";

        // ACT
        final result = AuthenticationService.instance.signIn(username, password);
        
        // ASSERT
        expect(result, false);
      });

      test('Password is empty', () async {
        // ARRANGE
        final username = "username";
        final password = "";

        // ACT
        final result = AuthenticationService.instance.signIn(username, password);
        
        // ASSERT
        expect(result, false);
      });

      test('Password.length < 6', () async {
        // ARRANGE
        final username = "username";
        final password = "12345";

        // ACT
        final result = AuthenticationService.instance.signIn(username, password);
        
        // ASSERT
        expect(result, false);
      });

      test('Password is incorrect', () async {
        // ARRANGE
        final username = "username";
        final password = "incorrect";

        // ACT
        final result = AuthenticationService.instance.signIn(username, password);
        
        // ASSERT
        expect(result, false);
      });

      test('Sign in success', () async {
        // ARRANGE
        final username = "username";
        final password = "password";

        // ACT
        final result = AuthenticationService.instance.signIn(username, password);
        
        // ASSERT
        expect(result, true);
      });
    });
    
    group('Sign up -', () {
      test('Username is empty', () async {
        // ARRANGE
        final username = "";
        final password = "password";
        final email = "email@gmail.com";
        final dob = "20/10/2003";

        // ACT
        final result = AuthenticationService.instance.signUp(username, password, email, dob);
        
        // ASSERT
        expect(result, false);
      });

      test('Password is empty', () async {
        // ARRANGE
        final username = "username";
        final password = "";
        final email = "email@gmail.com";
        final dob = "20/10/2003";

        // ACT
        final result = AuthenticationService.instance.signUp(username, password, email, dob);
        
        // ASSERT
        expect(result, false);
      });

      test('Email is empty', () async {
        // ARRANGE
        final username = "username";
        final password = "password";
        final email = "";
        final dob = "20/10/2003";

        // ACT
        final result = AuthenticationService.instance.signUp(username, password, email, dob);
        
        // ASSERT
        expect(result, false);
      });

      test('Date of birth is empty', () async {
        // ARRANGE
        final username = "username";
        final password = "password";
        final email = "email@gmail.com";
        final dob = "";

        // ACT
        final result = AuthenticationService.instance.signUp(username, password, email, dob);
        
        // ASSERT
        expect(result, false);
      });

      test('Password.length < 6', () async {
        // ARRANGE
        final username = "username";
        final password = "12345";
        final email = "email@gmail.com";
        final dob = "20/10/2003";

        // ACT
        final result = AuthenticationService.instance.signUp(username, password, email, dob);
        
        // ASSERT
        expect(result, false);
      });

      test('Email is invaild', () async {
        // ARRANGE
        final username = "username";
        final password = "password";
        final email = "a@a";
        final dob = "20/10/2003";

        // ACT
        final result = AuthenticationService.instance.signUp(username, password, email, dob);
        
        // ASSERT
        expect(result, false);
      });

      test('Date of birth is invaild (Datenow + 1)', () async {
        // ARRANGE
        final username = "username";
        final password = "password";
        final email = "email@gmail.com";
        final dob = dateFormat.format(DateTime.now().add(const Duration(days: 1)));

        // ACT
        final result = AuthenticationService.instance.signUp(username, password, email, dob);
        
        // ASSERT
        expect(result, false);
      });

      test('Date of birth is invaild (min)', () async {
        // ARRANGE
        final username = "username";
        final password = "password";
        final email = "email@gmail.com";
        final dob = "01/01/1900";

        // ACT
        final result = AuthenticationService.instance.signUp(username, password, email, dob);
        
        // ASSERT
        expect(result, false);
      });

      test('Sign up success', () async {
        // ARRANGE
        final username = "username";
        final password = "password";
        final email = "email@gmail.com";
        final dob = "20/10/2003";

        // ACT
        final result = AuthenticationService.instance.signUp(username, password, email, dob);
        
        // ASSERT
        expect(result, true);
      });
    });

    group('Change password -', () {
      test('Username is empty', () async {
        // ARRANGE
        final username = "";
        final password = "password";
        final newPassword = "newpassword";
        final confirmPassword = "newpassword";

        // ACT
        final result = AuthenticationService.instance.changePassword(username, password, newPassword, confirmPassword);
        
        // ASSERT
        expect(result, false);
      });

      test('Password is empty', () async {
        // ARRANGE
        final username = "username";
        final password = "";
        final newPassword = "newpassword";
        final confirmPassword = "newpassword";

        // ACT
        final result = AuthenticationService.instance.changePassword(username, password, newPassword, confirmPassword);
        
        // ASSERT
        expect(result, false);
      });

      test('NewPassword is empty', () async {
        // ARRANGE
        final username = "username";
        final password = "password";
        final newPassword = "";
        final confirmPassword = "newpassword";

        // ACT
        final result = AuthenticationService.instance.changePassword(username, password, newPassword, confirmPassword);
        
        // ASSERT
        expect(result, false);
      });

      test('ConfirmPassword is empty', () async {
        // ARRANGE
        final username = "username";
        final password = "password";
        final newPassword = "newpassword";
        final confirmPassword = "";

        // ACT
        final result = AuthenticationService.instance.changePassword(username, password, newPassword, confirmPassword);
        
        // ASSERT
        expect(result, false);
      });

      test('NewPassword.length < 6', () async {
        // ARRANGE
        final username = "username";
        final password = "password";
        final newPassword = "12345";
        final confirmPassword = "newpassword";

        // ACT
        final result = AuthenticationService.instance.changePassword(username, password, newPassword, confirmPassword);
        
        // ASSERT
        expect(result, false);
      });

      test('ConfirmPassword is incorrent', () async {
        // ARRANGE
        final username = "username";
        final password = "password";
        final newPassword = "newpassword";
        final confirmPassword = "confirmpassword";

        // ACT
        final result = AuthenticationService.instance.changePassword(username, password, newPassword, confirmPassword);
        
        // ASSERT
        expect(result, false);
      });

      test('OldPassword is incorrect', () async {
        // ARRANGE
        final username = "username";
        final password = "incorrect";
        final newPassword = "newpassword";
        final confirmPassword = "newpassword";

        // ACT
        final result = AuthenticationService.instance.changePassword(username, password, newPassword, confirmPassword);
        
        // ASSERT
        expect(result, false);
      });

      test('Change password success', () async {
        // ARRANGE
        final username = "username";
        final password = "password";
        final newPassword = "newpassword";
        final confirmPassword = "newpassword";

        // ACT
        final result = AuthenticationService.instance.changePassword(username, password, newPassword, confirmPassword);
        
        // ASSERT
        expect(result, true);
      });
    });
  });
}