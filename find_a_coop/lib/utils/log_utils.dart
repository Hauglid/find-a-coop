import 'dart:developer';

// Yellow text
void logInfo(String message, {StackTrace? stackTrace}) {
  log('\x1B[33m$message\x1B[0m');
  if (stackTrace != null) {
    log('\x1B[33m$stackTrace\x1B[0m');
  }
}

// Green text
void logSuccess(String message, {StackTrace? stackTrace}) {
  log('\x1B[32m$message\x1B[0m');
  if (stackTrace != null) {
    log('\x1B[32m$stackTrace\x1B[0m');
  }
}

// Blue text
void logWarning(String message, {StackTrace? stackTrace}) {
  log('\x1B[34m$message\x1B[0m');
  if (stackTrace != null) {
    log('\x1B[34m$stackTrace\x1B[0m');
  }
}

// Red text
void logError(String message, {StackTrace? stackTrace}) {
  log('\x1B[31m$message\x1B[0m');
  if (stackTrace != null) {
    log('\x1B[31m$stackTrace\x1B[0m');
  }
}
