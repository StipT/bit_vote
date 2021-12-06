
import 'package:bit_vote/domain/core/value_failures.dart';

class UnExpectedValueError extends Error {
  UnExpectedValueError(this.valueFailures);

  final ValueFailures? valueFailures;


  @override
  String toString() {
    return Error.safeToString(
        'UnExpectedValueError{valueFailures: $valueFailures}');
  }
}