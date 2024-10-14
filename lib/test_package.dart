library test_package;

import 'src/_user_storage.dart'; // Import the private file from src

// Function 1: Create User Profile
void createUserProfile(String name, String address, String phoneNumber) {
  UserStorage.createUser(name, address, phoneNumber);
}

// Function 2: Get User Profile
Map<String, String> getUserProfile(String userName) {
  return UserStorage.getUserProfile(userName);
}
