import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../../../features/personalization/models/user_model.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  /// Variables
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  /// Function to save user data to Firebase Firestore
  Future<void> saveUserData(UserModel user) async {
    try {
      await _db.collection('Users').doc(user.id).set(user.toJson());
    } catch (e) {
      throw 'Something went wrong while creating your account. Please try again';
    }
  }
}
