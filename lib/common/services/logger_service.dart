import 'package:logger/logger.dart';

class LoggerService {
  late Logger logger;

  static final LoggerService _instance = LoggerService._internal();

  factory LoggerService() {
    return _instance;
  }

  LoggerService._internal() {
    logger = Logger(
      printer: PrettyPrinter(
        methodCount: 8, // number of method calls to be displayed
        errorMethodCount: 8, // number of method calls if stacktrace is provided
        lineLength: 150, // width of the output
        colors: true, // Colorful log messagess
        printEmojis: false, // Print an emoji for each log message
        printTime: true, 
        // Should each log print contain a timestamp
      ),
    );
    simple("LOGGER SERVICE INITIALIZED");
  }

  // ###############
  // #### UTILS ####
  // ###############

  wrapText(String text) {
    return "#### $text ####";
  }

  // ###################
  // #### LOG TYPES ####
  // ###################

  void simple(String message) {
    DateTime now = DateTime.now();
    // ignore: avoid_print
    print("${now.toLocal().toString()} ---> ${message.toUpperCase()}");
  }

  void debug({required String title, dynamic message, StackTrace? stackTrace}) {
    logger.d(message, error: wrapText(title), stackTrace: stackTrace);
  }

  void verbose(
      {required String title, dynamic message, StackTrace? stackTrace}) {
    logger.t(message, error: wrapText(title), stackTrace: stackTrace);
  }

  void info({required String title, dynamic message, StackTrace? stackTrace}) {
    logger.i(message, error: wrapText(title), stackTrace: stackTrace);
  }

  void warning(
      {required String title, dynamic message, StackTrace? stackTrace}) {
    logger.w(message, error: wrapText(title), stackTrace: stackTrace);
  }

  void error({required String title, dynamic message, StackTrace? stackTrace}) {
    logger.e(message, error: wrapText(title), stackTrace: stackTrace);
  }

  void critical(
      {required String title, dynamic message, StackTrace? stackTrace}) {
    logger.f(message, error: wrapText(title), stackTrace: stackTrace);
  }
}
