import 'package:logger/web.dart';

class ELoggerHelper {
  static final Logger _logger = Logger(
    printer: PrettyPrinter(),
    level: Level.debug,
  );

  static void logDebug(String message) {
    _logger.d(message);
  }

  static void logError(String message, [dynamic error]) {
    _logger.e(message, error: error, stackTrace: StackTrace.current);
  }

  static void logInfo(String message) {
    _logger.i(message);
  }

  static void logWarning(String message) {
    _logger.w(message);
  }

  static void logVerbose(String message) {
    _logger.v(message);
  }

  static void logWTF(String message) {
    _logger.wtf(message);
  }

  static void logNetworkError(String message) {
    _logger.e(message);
  }

  static void logNetworkRequest(String message) {
    _logger.d(message);
  }

  static void logNetworkResponse(String message) {
    _logger.d(message);
  }

  static void logNetworkSuccess(String message) {
    _logger.i(message);
  }
}
