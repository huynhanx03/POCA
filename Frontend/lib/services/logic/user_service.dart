import 'package:intl/intl.dart';
import 'package:poca/utils/helper_utils.dart';

class UserService {
  UserService._privateConstructor();
  static final UserService _instance = UserService._privateConstructor();

  static UserService get instance => _instance;

  static final String IDCorrect = "IDCorrect";

  bool createUser(String Username, String Password, String Email, String dob) {
    if (Username.isEmpty)
      return false;

    if (Password.isEmpty)
      return false;

    if (Email.isEmpty)
      return false;

    if (dob.isEmpty)
      return false;

    if (!HelperUtils.isEmailValid(Email))
      return false;

    DateFormat dateFormat = DateFormat('dd/MM/yyyy');
    DateTime minDate = dateFormat.parse('01/01/1900');
    DateTime currentDate = DateTime.now();
    DateTime birthday = dateFormat.parse(dob);

    if (!(birthday.isAfter(minDate) && birthday.isBefore(currentDate)))
      return false;

    if (Password.length < 6)
      return false;

    return true;
  }

  bool editUser(String ID, String Username, String Password, String Email, String dob) {
    if (ID.isEmpty)
      return false;
    
    if (Username.isEmpty)
      return false;

    if (Password.isEmpty)
      return false;

    if (Email.isEmpty)
      return false;

    if (dob.isEmpty)
      return false;

    if (!HelperUtils.isEmailValid(Email))
      return false;

    DateFormat dateFormat = DateFormat('dd/MM/yyyy');
    DateTime minDate = dateFormat.parse('01/01/1900');
    DateTime currentDate = DateTime.now();
    DateTime birthday = dateFormat.parse(dob);

    if (!(birthday.isAfter(minDate) && birthday.isBefore(currentDate)))
      return false;

    if (Password.length < 6)
      return false;

    return ID == IDCorrect;
  }

  bool deleteUser(String? ID)
  {
    if (ID == null || ID.isEmpty)
      return false;

    return ID == IDCorrect;
  }
}