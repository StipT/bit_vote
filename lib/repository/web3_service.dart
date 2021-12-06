import 'package:bit_vote/domain/blockchain/blockchain_failures.dart';
import 'package:bit_vote/domain/blockchain/blockchain_value_objects.dart';
import 'package:bit_vote/domain/blockchain/i_web3_service.dart';
import 'package:bit_vote/domain/core/errors.dart';
import 'package:bit_vote/logic/vote/ballot_box_dto.dart';
import 'package:bit_vote/shared/system.constants.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'package:logger/logger.dart';
import 'package:web3dart/web3dart.dart';

class Web3Service implements IWeb3Service {
  static final Web3Service _inst = Web3Service._internal();




  Web3Service._internal();

  factory Web3Service(String privateKey, String ethAddressHex) {
    if (_inst._privateKey != privateKey) {
      _inst._client = Client();
      _inst._web3Client = Web3Client(RPC_SERVER, _inst._client);
      _inst.ethAddress = EthereumAddress.fromHex(ethAddressHex);
      _inst._privateKey = privateKey;
    }
    return _inst;
  }

  factory Web3Service.instance() {
    return _inst;
  }

  final _logger = Logger();

  String _privateKey = "";
  late EthereumAddress ethAddress;
  late Client _client;
  late Web3Client _web3Client;

  Future<DeployedContract> loadContract() async {
    String abi = await rootBundle.loadString(ABI_PATH);
    String contractAddress = CONTRACT_ADDRESS;

    final contract = DeployedContract(
      ContractAbi.fromJson(abi, "Elections"),
      EthereumAddress.fromHex(contractAddress),
    );
    return contract;
  }

  Future<String> _sendTransaction(
      String functionName, List<dynamic> args) async {
    DeployedContract _contract = await loadContract();
    DeployedContract contract = _contract;
    final ethFunction = contract.function(functionName);
    final _credentials = EthPrivateKey.fromHex(_privateKey);

    final result = await _web3Client.sendTransaction(
      _credentials,
      Transaction.callContract(
        contract: contract,
        function: ethFunction,
        parameters: args,
      ),
    );
    return result;
  }

  Future<List<dynamic>> _call(String functionName, List<dynamic> args) async {
    DeployedContract _contract = await loadContract();
    final ethFunction = _contract.function(functionName);
    final result = await _web3Client.call(
        contract: _contract, function: ethFunction, params: args);
    return result;
  }

  Future<Either<BlockchainFailures, String>> checkState(
      {required Id? boxId}) async {
    final boxIdValue =
        boxId!.valueObject!.fold((l) => throw UnExpectedValueError(l), id);

    try {
      List<dynamic> result = await _call("checkState", [boxIdValue]);
      return right(result.toString());
    } catch (e) {
      return left(const BlockchainFailures.serverError());
    }
  }

  Future<Either<BlockchainFailures, String>> displayCandidate(
      {required Id? boxId, required Id? candidateId}) async {
    final boxIdValue =
        boxId!.valueObject!.fold((l) => throw UnExpectedValueError(l), id);

    final candidateIdValue = candidateId!.valueObject!
        .fold((l) => throw UnExpectedValueError(l), id);

    try {
      List<dynamic> result =
          await _call("displayCandidate", [boxIdValue, candidateIdValue]);
      return right(result.toString());
    } catch (e) {
      return left(const BlockchainFailures.serverError());
    }
  }

  Future<Either<BlockchainFailures, BallotBoxDto>> showBallotBox(
      {required Id? boxId}) async {
    final boxIdValue =
        boxId!.valueObject!.fold((l) => throw UnExpectedValueError(l), id);

    try {
      List<dynamic> result = await _call("showBallotBox", [boxIdValue]);

      final ballotBox = BallotBoxDto(
        id: Id(id: result[0] as BigInt),
        adminAddress: Address(address: result[1].toString()),
        electionState: result[2] as String,
        endTime: result[3] as BigInt,
        topic: Topic(topic: result[4] as String),
        candidates: parseCandidatesString(result[5]),
        votes: result[6].cast<BigInt>(),
      );

      return right(ballotBox);
    } catch (e) {
      return left(const BlockchainFailures.serverError());
    }
  }

  Future<Either<BlockchainFailures, List<BallotBoxDto>>> showBallotBoxes(
      {required List<Id?> boxIds}) async {
    List<BallotBoxDto> ballotBoxes = List<BallotBoxDto>.empty(growable: true);

    for (Id? ids in boxIds) {
      final boxIdValue =
          ids!.valueObject!.fold((l) => throw UnExpectedValueError(l), id);
      try {
        List<dynamic> result = await _call("showBallotBox", [boxIdValue]);

        final ballotBox = BallotBoxDto(
          id: Id(id: result[0] as BigInt),
          adminAddress: Address(address: result[1].toString()),
          electionState: result[2] as String,
          endTime: result[3] as BigInt,
          topic: Topic(topic: result[4] as String),
          candidates: parseCandidatesString(result[5]),
          votes: result[6].cast<BigInt>(),
        );

        ballotBoxes.add(ballotBox);
      } catch (e) {
        return left(const BlockchainFailures.serverError());
      }
    }
    return right(ballotBoxes);
  }

  Future<Either<BlockchainFailures, Unit>> createElection(
      {required Topic? topic}) async {
    final topicValue =
        topic!.valueObject!.fold((l) => throw UnExpectedValueError(l), id);

    try {
      var response = await _sendTransaction("createBallotBox", [topicValue]);
      return right(unit);
    } catch (e) {
      return left(const BlockchainFailures.transactionFailed());
    }
  }

  Future<Either<BlockchainFailures, Unit>> vote(
      {required Id? boxId, required Id? candidateId}) async {
    final boxIdValue =
        boxId!.valueObject!.fold((l) => throw UnExpectedValueError(l), id);
    final candidateIdValue = candidateId!.valueObject!
        .fold((l) => throw UnExpectedValueError(l), id);

    try {
      var response =
          await _sendTransaction("vote", [boxIdValue, candidateIdValue]);
      return right(unit);
    } catch (e) {
      return left(const BlockchainFailures.transactionFailed());
    }
  }

  Future<Either<BlockchainFailures, Unit>> addCandidate(
      {required Id? boxId, required String name}) async {
    final boxIdValue =
        boxId!.valueObject!.fold((l) => throw UnExpectedValueError(l), id);
    try {
      var response = await _sendTransaction("addCandidate", [boxIdValue, name]);
      return right(unit);
    } catch (e) {
      return left(const BlockchainFailures.transactionFailed());
    }
  }

  Future<Either<BlockchainFailures, Unit>> addVoter(
      {required Id? boxId}) async {
    final boxIdValue =
        boxId!.valueObject!.fold((l) => throw UnExpectedValueError(l), id);
    try {
      var response = await _sendTransaction("addVoter", [boxIdValue]);
      return right(unit);
    } catch (e) {
      return left(const BlockchainFailures.transactionFailed());
    }
  }

  Future<Either<BlockchainFailures, Unit>> endElection(
      {required Id? boxId}) async {
    final boxIdValue =
        boxId!.valueObject!.fold((l) => throw UnExpectedValueError(l), id);
    try {
      var response = await _sendTransaction("endElection", [boxIdValue]);
      return right(unit);
    } catch (e) {
      return left(const BlockchainFailures.transactionFailed());
    }
  }

  void ballotBoxCreatedEvent(
      void onBallotBoxCreated(String sender, BigInt ballotBoxId, String topic,
          String electionState)) async {
    DeployedContract _contract = await loadContract();
    _web3Client
        .events(
      FilterOptions.events(
        contract: _contract,
        event: _contract.event('BallotBoxCreated'),
      ),
    )
        .listen((event) {
      final decoded = _contract
          .event('BallotBoxCreated')
          .decodeResults(event.topics!, event.data!);
      final sender = decoded[0] as EthereumAddress;
      if (ethAddress == sender) {
        final ballotBoxId = decoded[1] as BigInt;
        final ballotBoxDesc = decoded[2] as String;
        final ballotBoxState = decoded[3].toString();

        onBallotBoxCreated(
            sender.toString(), ballotBoxId, ballotBoxDesc, ballotBoxState);
      }
    });
  }

  void votedSuccessfullyEvent(
      void onVotedSuccessfully(
          String sender, BigInt ballotBox, BigInt candidateId)) async {
    DeployedContract _contract = await loadContract();
    final votedSuccessfully = _contract.event('VotedSuccessfully');

    _web3Client
        .events(
      FilterOptions.events(
        contract: _contract,
        event: votedSuccessfully,
      ),
    )
        .listen((event) {
      final decoded =
          votedSuccessfully.decodeResults(event.topics!, event.data!);
      final sender = decoded[0] as EthereumAddress;
      if (ethAddress == sender) {
        final ballotBoxId = decoded[1] as BigInt;
        final candidateId = decoded[2] as BigInt;

        onVotedSuccessfully(sender.hex, ballotBoxId, candidateId);
      }
    });
  }

  void electionStartedEvent(
      void onElectionStarted(String sender, BigInt ballotBoxId,
          BigInt ballotBoxState, BigInt endTime)) async {
    DeployedContract _contract = await loadContract();
    final electionStart = _contract.event('ElectionStart');

    _web3Client
        .events(
      FilterOptions.events(
        contract: _contract,
        event: electionStart,
      ),
    )
        .listen((event) {
      final decoded = electionStart.decodeResults(event.topics!, event.data!);
      final sender = decoded[0] as EthereumAddress;
      if (ethAddress == sender) {
        final ballotBoxId = decoded[1] as BigInt;
        final ballotBoxState = decoded[2] as BigInt;
        final endTime = decoded[3] as BigInt;
        onElectionStarted(sender.hex, ballotBoxId, ballotBoxState, endTime);
      }
    });
  }

  void electionEndedEvent(
      void onElectionEnded(
          String sender, BigInt ballotBoxId, String ballotBoxState)) async {
    DeployedContract _contract = await loadContract();
    final electionEnd = _contract.event('ElectionEnd');

    _web3Client
        .events(
      FilterOptions.events(
        contract: _contract,
        event: electionEnd,
      ),
    )
        .listen((event) {
      final decoded = electionEnd.decodeResults(event.topics!, event.data!);
      final sender = decoded[0] as EthereumAddress;
      if (ethAddress == sender) {
        final ballotBoxId = decoded[1] as BigInt;
        final ballotBoxState = decoded[2] as String;
        onElectionEnded(sender.hex, ballotBoxId, ballotBoxState);
      }
    });
  }

  void addedAVoterEvent(
      void onAddedAVoter(String sender, BigInt ballotBoxId)) async {
    DeployedContract _contract = await loadContract();
    final addedAVoter = _contract.event('AddedAVoter');

    _web3Client
        .events(
      FilterOptions.events(
        contract: _contract,
        event: addedAVoter,
      ),
    )
        .listen((event) {
      final decoded = addedAVoter.decodeResults(event.topics!, event.data!);
      final sender = decoded[0] as EthereumAddress;
      if (ethAddress == sender) {
        final ballotBoxId = decoded[1] as BigInt;
        onAddedAVoter(sender.hex, ballotBoxId);
      }
    });
  }

  void addedACandidateEvent(
      void onAddedACandidate(String sender, BigInt ballotBox,
          BigInt candidateId, String candidateName)) async {
    DeployedContract _contract = await loadContract();
    final addedACandidate = _contract.event('AddedACandidate');

    _web3Client
        .events(
      FilterOptions.events(
        contract: _contract,
        event: addedACandidate,
      ),
    )
        .listen((event) {
      final decoded = addedACandidate.decodeResults(event.topics!, event.data!);
      final sender = decoded[0] as EthereumAddress;
      if (ethAddress == sender) {
        final ballotBoxId = decoded[1] as BigInt;
        final candidateId = decoded[2] as BigInt;
        final candidateName = decoded[3] as String;

        onAddedACandidate(
            sender.toString(), ballotBoxId, candidateId, candidateName);
      }
    });
  }

  List<String> parseCandidatesString(String candidatesString) {
    List<String> candidates = candidatesString.split(",.,");
    candidates.removeLast();
    return candidates;
  }


  Future<Either<BlockchainFailures, Unit>> startElection({required Id? boxId, required BigInt? duration}) async {
    final boxIdValue =
    boxId!.valueObject!.fold((l) => throw UnExpectedValueError(l), id);
    BigInt durationZ = duration!;
    try {
      var response =
      await _sendTransaction("startElection", [boxIdValue, durationZ]);
      return right(unit);
    } catch (e) {
      return left(const BlockchainFailures.transactionFailed());
    }
  }

}
