import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/utils/formatters/formatter.dart';

/// Model class for user data
class UserModel {
  final String id;
  String firstName;
  String lastName;
  final String username;
  final String email;
  String phoneNumber;
  String profilePicture;

  /// Constructor for user model
  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.profilePicture,
  });

  /// Helper function to get full name
  String get fullName => '$firstName $lastName';

  /// Helper function to format phone number
  String get formattedPhoneNumber => EFormatter.formatPhoneNumber(phoneNumber);

  /// Static function to split full name into first name and last name
  static List<String> splitFullName(String fullName) {
    final names = fullName.split(' ');
    return names.length == 2 ? names : ['', ''];
  }

  /// Static function to generate username from full name
  static String generateUsername(String fullName) {
    List<String> names = fullName.split(' ');
    String firstName = names[0].toLowerCase();
    String lastName = names.length > 1 ? names[1].toLowerCase() : '';

    String camelCaseUserName = "$firstName$lastName";
    String userNameWithPrefix = "user$camelCaseUserName";
    return userNameWithPrefix;
  }

  /// Static function to create an empty user model
  static UserModel empty() {
    return UserModel(
      id: '',
      firstName: '',
      lastName: '',
      username: '',
      email: '',
      phoneNumber: '',
      profilePicture: '',
    );
  }

  /// Convert user model to JSON
  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'username': username,
      'email': email,
      'phoneNumber': phoneNumber,
      'profilePicture': profilePicture,
    };
  }

  /// Factory method to create user model from JSON
  factory UserModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> snapshot) {
    final data = snapshot.data()!;
    return UserModel(
      id: snapshot.id,
      firstName: data['firstName'],
      lastName: data['lastName'],
      username: data['username'],
      email: data['email'],
      phoneNumber: data['phoneNumber'],
      profilePicture: data['profilePicture'],
    );
  }
}
