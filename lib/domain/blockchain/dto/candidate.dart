import 'package:freezed_annotation/freezed_annotation.dart';
import '../blockchain_value_objects.dart';

part 'candidate.freezed.dart';

@freezed
abstract class Candidate implements _$Candidate {
  const Candidate._();

  const factory Candidate({
    required String name,
  }) = _Candidate;

  factory Candidate.empty() => Candidate(
    name: "",
  );
}
