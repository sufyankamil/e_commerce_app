import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class EHelperFunctions {
  static Color? getColor(String value) {
    if (value == 'Green') {
      return Colors.green;
    } else if (value == 'Red') {
      return Colors.red;
    } else if (value == 'Blue') {
      return Colors.blue;
    } else if (value == 'Yellow') {
      return Colors.yellow;
    } else if (value == 'Black') {
      return Colors.black;
    } else if (value == 'White') {
      return Colors.white;
    } else if (value == 'Grey') {
      return Colors.grey;
    } else if (value == 'Orange') {
      return Colors.orange;
    } else if (value == 'Purple') {
      return Colors.purple;
    } else if (value == 'Pink') {
      return Colors.pink;
    } else if (value == 'Brown') {
      return Colors.brown;
    } else if (value == 'Cyan') {
      return Colors.cyan;
    } else if (value == 'Teal') {
      return Colors.teal;
    } else if (value == 'Amber') {
      return Colors.amber;
    } else if (value == 'Lime') {
      return Colors.lime;
    } else if (value == 'Indigo') {
      return Colors.indigo;
    } else if (value == 'Light Blue') {
      return Colors.lightBlue;
    } else if (value == 'Deep Purple') {
      return Colors.deepPurple;
    } else if (value == 'Light Green') {
      return Colors.lightGreen;
    } else if (value == 'Deep Orange') {
      return Colors.deepOrange;
    } else if (value == 'Blue Grey') {
      return Colors.blueGrey;
    } else if (value == 'Grey') {
      return Colors.grey;
    } else if (value == 'Amber') {
      return Colors.amber;
    } else if (value == 'Lime') {
      return Colors.lime;
    } else if (value == 'Indigo') {
      return Colors.indigo;
    } else if (value == 'Light Blue') {
      return Colors.lightBlue;
    } else if (value == 'Deep Purple') {
      return Colors.deepPurple;
    } else if (value == 'Light Green') {
      return Colors.lightGreen;
    } else if (value == 'Deep Orange') {
      return Colors.deepOrange;
    } else if (value == 'Blue Grey') {
      return Colors.blueGrey;
    } else if (value == 'Grey') {
      return Colors.grey;
    } else if (value == 'Amber') {
      return Colors.amber;
    } else if (value == 'Lime') {
      return Colors.lime;
    } else if (value == 'Indigo') {
      return Colors.indigo;
    } else if (value == 'Light Blue') {
      return Colors.lightBlue;
    } else if (value == 'Deep Purple') {
      return Colors.deepPurple;
    } else if (value == 'Light Green') {
      return Colors.lightGreen;
    } else if (value == 'Deep Orange') {
      return Colors.deepOrange;
    } else if (value == 'Blue Grey') {
      return Colors.blueGrey;
    } else if (value == 'Grey') {
      return Colors.grey;
    } else if (value == 'Amber') {
      return Colors.amber;
    } else if (value == 'Lime') {
      return Colors.lime;
    } else if (value == 'Indigo') {
      return Colors.indigo;
    } else if (value == 'Light Blue') {
      return Colors.lightBlue;
    } else if (value == 'Deep Purple') {
      return Colors.deepPurple;
    } else if (value == 'Light Green') {
      return Colors.lightGreen;
    } else if (value == 'Deep Orange') {
      return Colors.deepOrange;
    } else if (value == 'Blue Grey') {
      return Colors.blueGrey;
    } else if (value == 'Grey') {
      return Colors.grey;
    } else if (value == 'Amber') {
      return Colors.amber;
    } else if (value == 'Lime') {
      return Colors.lime;
    } else if (value == 'Indigo') {
      return Colors.indigo;
    } else if (value == 'Light Blue') {
      return Colors.lightBlue;
    } else if (value == 'Deep Purple') {
      return Colors.deepPurple;
    } else if (value == 'Light Green') {
      return Colors.lightGreen;
    } else if (value == 'Deep Orange') {
      return Colors.deepOrange;
    } else if (value == 'Blue Grey') {
      return Colors.blueGrey;
    } else if (value == 'Grey') {
      return Colors.grey;
    } else if (value == 'Amber') {
      return Colors.amber;
    } else if (value == 'Lime') {
      return Colors.lime;
    } else if (value == 'Indigo') {
      return Colors.indigo;
    } else if (value == 'Light Blue') {
      return Colors.lightBlue;
    } else if (value == 'Deep Purple') {
      return Colors.deepPurple;
    } else if (value == 'Light Green') {
      return Colors.lightGreen;
    } else if (value == 'Deep Orange') {
      return Colors.deepOrange;
    } else if (value == 'Blue Grey') {
      return Colors.blueGrey;
    }
    return Colors.black;
  }

  static String getInitials(String name) {
    List<String> nameSplit = name.split(' ');
    String initials = '';
    int numWords = nameSplit.length > 1 ? 2 : 1;
    for (int i = 0; i < numWords; i++) {
      initials += nameSplit[i][0];
    }
    return initials;
  }

  static String getInitialsFromTwoNames(String name1, String name2) {
    List<String> nameSplit1 = name1.split(' ');
    List<String> nameSplit2 = name2.split(' ');
    String initials = '';
    int numWords = nameSplit1.length > 1 ? 2 : 1;
    for (int i = 0; i < numWords; i++) {
      initials += nameSplit1[i][0];
    }
    numWords = nameSplit2.length > 1 ? 2 : 1;
    for (int i = 0; i < numWords; i++) {
      initials += nameSplit2[i][0];
    }
    return initials;
  }

  static void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  static void showSnackBarWithAction(BuildContext context, String message, String actionText, Function() onPressed) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      action: SnackBarAction(
        label: actionText,
        onPressed: onPressed,
      ),
    ));
  }

  static void showAlert(String title, String message) {
    showDialog(
      context: Get.overlayContext!,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  static void showAlertWithAction(String title, String message, String actionText, Function() onPressed) {
    showDialog(
      context: Get.overlayContext!,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: onPressed,
            child: Text(actionText),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
        ],
      ),
    );
  }

  static void showConfirmationDialog(String title, String message, String actionText, Function() onConfirm) {
    showDialog(
      context: Get.overlayContext!,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: onConfirm,
            child: Text(actionText),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
        ],
      ),
    );
  }

  static void showConfirmationDialogWithAction(String title, String message, String actionText, Function() onConfirm, String actionText2, Function() onConfirm2) {
    showDialog(
      context: Get.overlayContext!,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: onConfirm,
            child: Text(actionText),
          ),
          TextButton(
            onPressed: onConfirm2,
            child: Text(actionText2),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
        ],
      ),
    );
  }

  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  static String truncateText(String text, int maxLenght) {
    if (text.length <= maxLenght) {
      return text;
    } else {
      return '${text.substring(0, maxLenght)}...';
    }
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static bool isLightMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light;
  }

  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  static String getFormattedDate(DateTime? date, {String format = 'dd-MMM-yyyy'}) {
    return DateFormat(format).format(date ?? DateTime.now());
  }

  // static List<T> removeDuplicates(List<T> list) {
  //   return list.toSet().toList();
  // }

  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];

    for (int i = 0; i < widgets.length; i += rowSize) {
      final rowChildren = <Widget>[];
      for (int j = 0; j < rowSize; j++) {
        if (i + j < widgets.length) {
          rowChildren.add(widgets[i + j]);
        }
      }
      wrappedList.add(Row(
        children: rowChildren,
      ));
    }

    return wrappedList;
  }
}
