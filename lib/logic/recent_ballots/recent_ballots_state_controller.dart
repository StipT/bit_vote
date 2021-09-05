import 'package:bit_vote/domain/blockchain/i_web3_service.dart';
import 'package:bit_vote/logic/blockchain/create_ballot_events.dart';
import 'package:bit_vote/logic/recent_ballots/recent_ballots_states.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecentBallotsStateController extends StateNotifier<RecentBallotsStates> {
  RecentBallotsStateController(this._web3Service)
      : super(RecentBallotsStates.initial());

  final IWeb3Service _web3Service;

  Future mapEventsToStates(CreateBallotEvents events) async {}
}
