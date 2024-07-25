/// Custom exceptions for Firebase Auth
class EFirebaseAuthException implements Exception {
  final String code;

  EFirebaseAuthException(this.code);

  /// Get the error message based on the error code
  String get errorMessage {
    switch (code) {
      case 'email-already-in-use':
        return 'The email address is already in use by another account';
      case 'invalid-email':
        return 'The email address is badly formatted';
      case 'invalid-credential':
        return 'The given credential is incorrect or has expired';
      case 'operation-not-allowed':
        return 'Email & Password accounts are not enabled';
      case 'weak-password':
        return 'The password is too weak';
      case 'user-not-found':
        return 'No user found for this email';
      case 'wrong-password':
        return 'Wrong password provided for this user';
      case 'user-disabled':
        return 'The user account has been disabled by an administrator';
      case 'too-many-requests':
        return 'Too many requests. Try again later';
      case 'network-request-failed':
        return 'Network error. Please check your internet connection';
      default:
        return 'Something went wrong. Please try again';
    }
  }
}
