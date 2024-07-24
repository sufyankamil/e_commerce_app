/// Custom exceptions for formatting related errors
class EFormatException implements Exception {
  final String message;

  /// Default Constructor with a message

  EFormatException([this.message = 'Invalid format. Please try again']);

  /// Create a format exception with a custom message
  factory EFormatException.fromMessage(String message) {
    return EFormatException(message);
  }

  /// Get the error message
  String get errorMessage => message;

  /// Create a format exception from an error code
  factory EFormatException.fromCode(String code) {
    switch (code) {
      case 'invalid-email-format':
        return EFormatException('The email address is badly formatted');
      case 'invalid-password':
        return EFormatException('The password is too weak');
      case 'invalid-username':
        return EFormatException('The username is invalid');
      case 'invalid-phone-number-format':
        return EFormatException('The phone number is invalid');
      case 'invalid-name':
        return EFormatException('The name is invalid');
      case 'invalid-id':
        return EFormatException('The ID is invalid');
      case 'invalid-date':
        return EFormatException('The date is invalid');
      case 'invalid-time':
        return EFormatException('The time is invalid');
      case 'invalid-url':
        return EFormatException('The URL is invalid');
      case 'invalid-amount':
        return EFormatException('The amount is invalid');
      case 'invalid-quantity':
        return EFormatException('The quantity is invalid');
      case 'invalid-rating':
        return EFormatException('The rating is invalid');
      case 'invalid-comment':
        return EFormatException('The comment is invalid');
      case 'invalid-address':
        return EFormatException('The address is invalid');
      case 'invalid-location':
        return EFormatException('The location is invalid');
      case 'invalid-category':
        return EFormatException('The category is invalid');
      case 'invalid-subcategory':
        return EFormatException('The subcategory is invalid');
      case 'invalid-status':
        return EFormatException('The status is invalid');
      case 'invalid-role':
        return EFormatException('The role is invalid');
      case 'invalid-type':
        return EFormatException('The type is invalid');
    }
    return EFormatException();
  }
}
