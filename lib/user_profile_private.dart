part of user_profile_package;

// Simulated database for user profiles
final Map<String, Map<String, String>> _userDatabase = {};

// Function 3: Create User (private)
void _createUser(String name, String address, String phoneNumber) {
  // Generate a user name for the profile (for simplicity, using name here)
  String userName = name.toLowerCase().replaceAll(' ', '_');
  _userDatabase[userName] = {
    'name': name,
    'address': address,
    'phoneNumber': phoneNumber,
  };
}

// Function 4: Get User (private)
Map<String, String> _getUser(String userName) {
  return _userDatabase[userName] ?? {
    'name': 'Not Found',
    'address': 'Not Found',
    'phoneNumber': 'Not Found',
  };
}
