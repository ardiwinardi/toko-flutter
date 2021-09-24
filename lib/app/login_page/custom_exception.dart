class ErrorInputException implements Exception {}

class ErrorResponseException implements Exception {
  final String message;
  ErrorResponseException(this.message);
}
