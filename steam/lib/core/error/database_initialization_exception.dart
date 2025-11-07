class DatabaseInitializationException implements Exception {
  final String message;
  DatabaseInitializationException(this.message);

  @override
  String toString() => 'DatabaseInitializationException: $message';
}
