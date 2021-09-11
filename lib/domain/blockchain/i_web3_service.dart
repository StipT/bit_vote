import 'package:bit_vote/domain/blockchain/blockchain_failures.dart';
import 'package:bit_vote/logic/vote/ballot_box_dto.dart';
import 'package:dartz/dartz.dart';

import 'blockchain_value_objects.dart';

abstract class IWeb3Service {
  Future<Either<BlockchainFailures, String>> checkState({required Id? boxId});

  Future<Either<BlockchainFailures, String>> displayCandidate(
      {required Id? boxId, required Id? candidateId});

  Future<Either<BlockchainFailures, String>> showWinner({required Id? boxId});

  Future<Either<BlockchainFailures, String>> showResults(
      {required Id? boxId, required Id? candidateId});

  Future<Either<BlockchainFailures, String>> voterProfile(
      {required Id? boxId, required Address? voterAddress});

  Future<Either<BlockchainFailures, BallotBoxDto>> showBallotBox(
      {required Id? boxId});

  Future<Either<BlockchainFailures, Unit>> createElection(
      {required Topic? topic});

  Future<Either<BlockchainFailures, Unit>> startElection(
      {required Id? boxId, required BigInt? duration});

  Future<Either<BlockchainFailures, Unit>> endElection({required Id? boxId});

  Future<Either<BlockchainFailures, Unit>> addCandidate(
      {required Id? boxId, required String name});

  Future<Either<BlockchainFailures, Unit>> addVoter({required Id? boxId});

  Future<Either<BlockchainFailures, Unit>> vote(
      {required Id? boxId, required Id? candidateId});
}
