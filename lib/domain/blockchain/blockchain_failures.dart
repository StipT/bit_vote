import 'package:freezed_annotation/freezed_annotation.dart';

part 'blockchain_failures.freezed.dart';

@freezed
class BlockchainFailures with _$BlockchainFailures {
  const factory BlockchainFailures.serverError() = ServerError;

  const factory BlockchainFailures.transactionFailed() = TransactionFailed;
}