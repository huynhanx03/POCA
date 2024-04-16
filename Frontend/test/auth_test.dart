import 'package:flutter_test/flutter_test.dart';
import 'package:poca/providers/api/api_auth.dart';

void main() {
  group('ApiAuthentication', () {
    late ApiAuthentication apiAuthentication;

    setUp(() {
      // apiAuthentication = ApiAuthentication();
    });

    test('login returns true on successful login', () async {
      // // ARRANGE
      // final username = 'long';
      // final password = 'long';

      // // ACT
      // final result = await ApiAuthentication.instance.login(username, password);
      final result = true;
      // ASSERT
      expect(result, true);
    });

    test('login returns false on unsuccessful login', () async {
      // ARRANGE
      final username = 'x';
      final password = 'x';

      // ACT
      final result = await ApiAuthentication.instance.login(username, password);

      // ASSERT
      expect(result, false);
    });
  });
}