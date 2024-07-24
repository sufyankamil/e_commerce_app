class EValidator {
  /// Empty text validator
  static String? validateEmpty(String? fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return '$fieldName is required';
    }
    return null;
  }

  static String? validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return 'Email is required';
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  static String? validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return 'Password is required';
    }
    if (password.length < 6) {
      return 'Password must be at least 6 characters long';
    }
    return null;
  }

  static String? validateName(String? name) {
    if (name == null || name.isEmpty) {
      return 'Name is required';
    }
    if (name.length < 3) {
      return 'Name must be at least 3 characters';
    }
    return null;
  }

  static String? validatePhoneNumber(String? phoneNumber) {
    if (phoneNumber == null || phoneNumber.isEmpty) {
      return 'Phone number is required';
    }
    if (!RegExp(r'^[0-9]{10}$').hasMatch(phoneNumber)) {
      return 'Please enter a valid phone number';
    }
    return null;
  }

  static String? validateOtp(String? otp) {
    if (otp == null || otp.isEmpty) {
      return 'OTP is required';
    }
    if (!RegExp(r'^[0-9]{6}$').hasMatch(otp)) {
      return 'Please enter a valid OTP';
    }
    return null;
  }

  static String? validateAddress(String? address) {
    if (address == null || address.isEmpty) {
      return 'Address is required';
    }
    if (address.length < 10) {
      return 'Address must be at least 10 characters';
    }
    return null;
  }

  static String? validatePincode(String? pincode) {
    if (pincode == null || pincode.isEmpty) {
      return 'Pincode is required';
    }
    if (!RegExp(r'^[0-9]{6}$').hasMatch(pincode)) {
      return 'Please enter a valid pincode';
    }
    return null;
  }

  static String? validateCity(String? city) {
    if (city == null || city.isEmpty) {
      return 'City is required';
    }
    if (city.length < 3) {
      return 'City must be at least 3 characters';
    }
    return null;
  }

  static String? validateState(String? state) {
    if (state == null || state.isEmpty) {
      return 'State is required';
    }
    if (state.length < 3) {
      return 'State must be at least 3 characters';
    }
    return null;
  }

  static String? validateCountry(String? country) {
    if (country == null || country.isEmpty) {
      return 'Country is required';
    }
    if (country.length < 3) {
      return 'Country must be at least 3 characters';
    }
    return null;
  }

  static String? validateTitle(String? title) {
    if (title == null || title.isEmpty) {
      return 'Title is required';
    }
    if (title.length < 3) {
      return 'Title must be at least 3 characters';
    }
    return null;
  }

  static String? validateDescription(String? description) {
    if (description == null || description.isEmpty) {
      return 'Description is required';
    }
    if (description.length < 10) {
      return 'Description must be at least 10 characters';
    }
    return null;
  }

  static String? validatePrice(String? price) {
    if (price == null || price.isEmpty) {
      return 'Price is required';
    }
    if (!RegExp(r'^[0-9]+$').hasMatch(price)) {
      return 'Please enter a valid price';
    }
    return null;
  }

  static String? validateQuantity(String? quantity) {
    if (quantity == null || quantity.isEmpty) {
      return 'Quantity is required';
    }
    if (!RegExp(r'^[0-9]+$').hasMatch(quantity)) {
      return 'Please enter a valid quantity';
    }
    return null;
  }

  static String? validateCategory(String? category) {
    if (category == null || category.isEmpty) {
      return 'Category is required';
    }
    if (category.length < 3) {
      return 'Category must be at least 3 characters';
    }
    return null;
  }
}
