import 'package:e_commerce_app/features/authentication/screens/login/login.dart';
import 'package:e_commerce_app/features/authentication/screens/onboading/onbaording.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce_app/navigation_menu.dart';
import 'package:e_commerce_app/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:e_commerce_app/utils/exceptions/firebase_exceptions.dart';
import 'package:e_commerce_app/utils/exceptions/platform_exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthRepository extends GetxController {
  static AuthRepository get instance => Get.find();

  /// Variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  /// Called when the app is first loaded
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  /// Function to decide the next screens
  screenRedirect() async {
    final user = _auth.currentUser;
    if (user != null) {
      if (user.emailVerified) {
        Get.offAll(() => const NavigationMenu());
      } else {
        Get.offAll(() => VerifyEmailScreen(email: _auth.currentUser!.email));
      }
    } else {
      // Local Storage
      deviceStorage.writeIfNull('isFirstTime', true);
      // Check if user is already logged in (first time) or not
      deviceStorage.read('isFirstTime') != true
          ? Get.offAll(() => const LoginScreen())
          : Get.offAll(() => const Onbaording());
    }
  }

  /* ----------------- Email & Password Sign-in --------------- */
  /// [Sign Up with Email & Password] - Register User to Firebase
  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      final userCredential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw EFirebaseAuthException(e.code).errorMessage;
    } on FirebaseException catch (e) {
      throw EFirebaseException(e.code).errorMessage;
    } on FormatException catch (_) {
      throw const FormatException();
    } on PlatformException catch (e) {
      throw EPlatformException(e.code).errorMessage;
    } catch (e) {
      throw 'Something went wrong while creating your account';
    }
  }

  /// Email Verification
  Future<void> sendEmailVerification() async {
    try {
      final user = _auth.currentUser;
      await user!.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      throw EFirebaseAuthException(e.code).errorMessage;
    } on FirebaseException catch (e) {
      throw EFirebaseException(e.code).errorMessage;
    } on FormatException catch (_) {
      throw const FormatException();
    } on PlatformException catch (e) {
      throw EPlatformException(e.code).errorMessage;
    } catch (e) {
      throw 'Something went wrong while sending email verification';
    }
  }

  /// [Sign In with Email & Password]
  Future<void> signInWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      Get.offAll(() => const LoginScreen());
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  /* ----------------- Sign Out --------------- */
  Future<void> signOut() async {
    try {
      await _auth.signOut();
      Get.offAll(() => const LoginScreen());
    } on FirebaseAuthException catch (e) {
      throw EFirebaseAuthException(e.code).errorMessage;
    } on FirebaseException catch (e) {
      throw EFirebaseException(e.code).errorMessage;
    } on FormatException catch (_) {
      throw const FormatException();
    } on PlatformException catch (e) {
      throw EPlatformException(e.code).errorMessage;
    } catch (e) {
      throw 'Something went wrong while sending email verification';
    }
  }
}
