library test_package;

class UserProfile {
  final String name;
  final String address;
  final String phoneNumber;

  UserProfile({required this.name, required this.address, required this.phoneNumber});
}

// A map to store user profiles
final Map<String, UserProfile> _userDatabase = {};

// Private function to create a user
void _createUser(String name, String address, String phoneNumber) {
  _userDatabase[name] = UserProfile(
    name: name,
    address: address,
    phoneNumber: phoneNumber,
  );
}

// Private function to get a user
UserProfile? _getUser(String userName) {
  return _userDatabase[userName];
}

// Public interface to create a user
class UserStorage {
  static void createUser(String name, String address, String phoneNumber) {
    _createUser(name, address, phoneNumber);
  }

  // Public interface to get user profile
  static Map<String, String> getUserProfile(String userName) {
    UserProfile? user = _getUser(userName);
    if (user != null) {
      return {
        'name': user.name,
        'address': user.address,
        'phoneNumber': user.phoneNumber,
      };
    } else {
      throw Exception('User not found');
    }
  }
}
