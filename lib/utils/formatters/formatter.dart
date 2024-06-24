import 'package:intl/intl.dart';

class EFormatter {
  static String fromatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  static String formatTime(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('hh:mm a').format(date);
  }

  static String formatDateTime(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy hh:mm a').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    // Assuming 10 digits phone number
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)}-${phoneNumber.substring(6, 10)}';
    } else if (phoneNumber.length == 11) {
      return '${phoneNumber.substring(0, 1)} (${phoneNumber.substring(1, 4)}) ${phoneNumber.substring(4, 7)}-${phoneNumber.substring(7, 11)}';
    } else {
      return phoneNumber;
    }
  }
}
