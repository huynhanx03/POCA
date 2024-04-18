import 'package:intl/intl.dart';
import 'package:poca/utils/helper_utils.dart';

class AuthenticationService {
  AuthenticationService._privateConstructor();
  static final AuthenticationService _instance = AuthenticationService._privateConstructor();

  static AuthenticationService get instance => _instance;

  static late String PasswordCorrent = "password";

  bool signIn(String Username, String Password) {
    if (Username.isEmpty)
      return false;

    if (Password.isEmpty)
      return false;

    if (Password.length < 6)
      return false;

    return Password == PasswordCorrent;
  }

  bool signUp(String Username, String Password, String email, String dob) {
    if (Username.isEmpty)
      return false;

    if (Password.isEmpty)
      return false;

    if (email.isEmpty)
      return false;

    if (dob.isEmpty)
      return false;

    if (!HelperUtils.isEmailValid(email))
      return false;

    DateFormat dateFormat = DateFormat('dd/MM/yyyy');
    DateTime minDate = dateFormat.parse('01/01/1900');
    DateTime currentDate = DateTime.now();
    DateTime birthday = dateFormat.parse(dob);

    if (!(birthday.isAfter(minDate) && birthday.isBefore(currentDate)))
      return false;

    if (Password.length < 6)
      return false;

    return Password == PasswordCorrent;
  }

  bool changePassword(String Username, String Password, String NewPassword, String ConfirmPassword) {
    if (Username.isEmpty)
      return false;

    if (Password.isEmpty)
      return false;
    
    if (NewPassword.isEmpty)
      return false;

    if (ConfirmPassword.isEmpty)
      return false;

    if (NewPassword.length < 6)
      return false;

    if (NewPassword != ConfirmPassword)
      return false;

    return Password == PasswordCorrent;
  }
}