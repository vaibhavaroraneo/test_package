library user_profile_package;

part 'user_profile_private.dart';

// Function 1: Create User Profile
void createUserProfile(String name, String address, String phoneNumber) {
  _createUser(name, address, phoneNumber);
}

// Function 2: Get User Profile
Map<String, String> getUserProfile(String userName) {
  return _getUser(userName);
}
