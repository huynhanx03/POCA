import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';
import 'package:poca/services/logic/user_service.dart';

final DateFormat dateFormat = DateFormat('dd/MM/yyyy');

const String ID = "1";
const String IDEmpty = "";
const String IDCorrect = "IDCorrect";

void main() {
  group('User Service -', () {
    group('Create user -', () {
      test('Username is empty', () async {
        // ARRANGE
        final username = "";
        final password = "password";
        final email = "email@gmail.com";
        final dob = "20/10/2003";

        // ACT
        final result = UserService.instance.createUser(username, password, email, dob);
        
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
        final result = UserService.instance.createUser(username, password, email, dob);
        
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
        final result = UserService.instance.createUser(username, password, email, dob);
        
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
        final result = UserService.instance.createUser(username, password, email, dob);
        
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
        final result = UserService.instance.createUser(username, password, email, dob);
        
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
        final result = UserService.instance.createUser(username, password, email, dob);
        
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
        final result = UserService.instance.createUser(username, password, email, dob);
        
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
        final result = UserService.instance.createUser(username, password, email, dob);
        
        // ASSERT
        expect(result, false);
      });

      test('Create a user success', () async {
        // ARRANGE
        final username = "username";
        final password = "password";
        final email = "email@gmail.com";
        final dob = "20/10/2003";

        // ACT
        final result = UserService.instance.createUser(username, password, email, dob);
        
        // ASSERT
        expect(result, true);
      });
    });

    group('Edit user -', () {
      test('ID is empty', () async {
        // ARRANGE
        final username = "username";
        final password = "password";
        final email = "email@gmail.com";
        final dob = "20/10/2003";

        // ACT
        final result = UserService.instance.editUser(IDEmpty, username, password, email, dob);
        
        // ASSERT
        expect(result, false);
      });

      test('Username is empty', () async {
        // ARRANGE
        final username = "";
        final password = "password";
        final email = "email@gmail.com";
        final dob = "20/10/2003";

        // ACT
        final result = UserService.instance.editUser(ID, username, password, email, dob);
        
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
        final result = UserService.instance.editUser(ID, username, password, email, dob);
        
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
        final result = UserService.instance.editUser(ID, username, password, email, dob);
        
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
        final result = UserService.instance.editUser(ID, username, password, email, dob);
        
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
        final result = UserService.instance.editUser(ID, username, password, email, dob);
        
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
        final result = UserService.instance.editUser(ID, username, password, email, dob);
        
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
        final result = UserService.instance.editUser(ID, username, password, email, dob);
        
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
        final result = UserService.instance.editUser(ID, username, password, email, dob);
        
        // ASSERT
        expect(result, false);
      });

      test('ID is not exist', () async {
        // ARRANGE
        final username = "username";
        final password = "password";
        final email = "email@gmail.com";
        final dob = "20/10/2003";

        // ACT
        final result = UserService.instance.editUser(ID, username, password, email, dob);

        // ASSERT
        expect(result, false);
      });

      test('Edit a user success', () async {
        // ARRANGE
        final username = "username";
        final password = "password";
        final email = "email@gmail.com";
        final dob = "20/10/2003";

        // ACT
        final result = UserService.instance.editUser(IDCorrect, username, password, email, dob);
        
        // ASSERT
        expect(result, true);
      });
    });
  
    group('Delete user - ', () {
      test('ID is empty', () async {
        // ACT
        final result = UserService.instance
            .deleteUser(IDEmpty);

        // ASSERT
        expect(result, false);
      });

      test('ID is not exist', () async {
        // ACT
        final result = UserService.instance
            .deleteUser(ID);

        // ASSERT
        expect(result, false);
      });

      test('Delete a user success', () async {
        // ACT
        final result = UserService.instance
            .deleteUser(IDCorrect);

        // ASSERT
        expect(result, true);
      });
    });
  });
}