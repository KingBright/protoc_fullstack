class BlocError {
  final Object error;
  final StackTrace stackTrace;

  BlocError(this.error, this.stackTrace);
}

class UnsupportedTypeError extends Error {
  final String msg;
  UnsupportedTypeError(this.msg);
}
