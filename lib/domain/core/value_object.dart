import 'package:bit_vote/domain/core/value_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();

  Either<ValueFailures<T>, T>? get valueObject;

  bool isValid() => valueObject!.isRight();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is ValueObject<T> && runtimeType == other.runtimeType;

  @override
  int get hashCode => 0;

  @override
  String toString() {
    return 'ValueObjects{$valueObject}';
  }
}