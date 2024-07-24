/// Custom exceptions for Firebase related errors
class EFirebaseException implements Exception {
  final String code;

  EFirebaseException(this.code);

  /// Get the error message based on the error code
  String get errorMessage {
    switch (code) {
      case 'permission-denied':
        return 'Permission denied. Please try again';
      case 'unavailable':
        return 'Service is currently unavailable. Please try again later';
      case 'internal':
        return 'Internal server error. Please try again later';
      case 'invalid-argument':
        return 'Invalid argument. Please try again';
      case 'not-found':
        return 'Resource not found. Please try again';
      case 'aborted':
        return 'Operation aborted. Please try again';
      case 'already-exists':
        return 'Resource already exists. Please try again';
      case 'cancelled':
        return 'Operation cancelled. Please try again';
      case 'data-loss':
        return 'Data loss. Please try again';
      case 'deadline-exceeded':
        return 'Operation timed out. Please try again';
      case 'failed-precondition':
        return 'Failed precondition. Please try again';
      case 'out-of-range':
        return 'Out of range. Please try again';
      case 'resource-exhausted':
        return 'Resource exhausted. Please try again';
      case 'unauthenticated':
        return 'Unauthenticated. Please try again';
      case 'email-already-in-use':
        return 'The email address is already in use by another account';
      case 'invalid-email':
        return 'The email address is badly formatted';
      case 'weak-password':
        return 'The password is too weak';
      case 'unknown':
        return 'Unknown error. Please try again';
      default:
        return 'Something went wrong. Please try again';
    }
  }
}
