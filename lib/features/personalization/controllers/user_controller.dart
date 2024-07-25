import 'package:e_commerce_app/utils/popups/loaders.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../../data/repositories/user/user_repository.dart';
import '../models/user_model.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();

  /// Save user data to Firebase Firestore
  Future<void> saveUserData(UserCredential? user) async {
    try {
      if (user == null) {
        // Convert name to First Name and Last Name
        final name = UserModel.splitFullName(user!.user!.displayName ?? '');
        final userName =
            UserModel.generateUsername(user.user!.displayName ?? '');
        // Map user data
        final userData = UserModel(
          id: user.user!.uid,
          firstName: name[0],
          lastName: name.length > 1 ? name.sublist(1).join(' ') : '',
          username: userName,
          email: user.user!.email ?? '',
          phoneNumber: user.user!.phoneNumber ?? '',
          profilePicture: user.user!.photoURL ?? '',
        );
        // Save user data to Firebase Firestore
        await UserRepository.instance.saveUserData(userData);
      }
    } catch (e) {
      ELoaders.warningSnackBar(
          title: 'Error',
          message: 'Something went wrong while saving your data');
    }
  }
}
