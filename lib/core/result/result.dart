sealed class Result<T> {
  const Result();
}

class Unit {}

class Success<T> extends Result<T> {
  final T value;

  const Success(this.value);
}

class Failure<T> extends Result<T> {
  final Exception error;
  final Object? value;

  const Failure(this.error, [this.value]);
}

Result<Unit> successOfUnit() => Success(Unit());
