import 'package:bit_vote/domain/core/errors.dart';
import 'package:bit_vote/logic/vote/vote_events.dart';
import 'package:bit_vote/shared/app_colors.dart';
import 'package:bit_vote/shared/linear_gradient_mask.dart';
import 'package:bit_vote/ui/vote_screen/vote_view.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../providers.dart';

class ShareView extends ConsumerWidget {
  final formKey = GlobalKey<FormState>();

  Logger _logger = Logger();

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final deviceSize = MediaQuery.of(context).size;

    final createBallotState = watch(createBallotProvider);
    final createBallotEvents = watch(createBallotProvider.notifier);

    final voteState = watch(voteProvider);
    final voteEvent = watch(voteProvider.notifier);

    BigInt ballotId = createBallotState.id.valueObject!
        .fold((l) => throw UnExpectedValueError(l), id);

    voteEvent.mapEventsToStates(VoteEvents.onBallotIdChange(id: ballotId));

    return SafeArea(
      child: Stack(
        children: [
          Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: backgroundColor,
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                "Share your ballot box",
                style: TextStyle(color: primaryColor),
              ),
              backgroundColor: backgroundColorLight,
              iconTheme: IconThemeData(
                color: primaryColor, //change your color here
              ),
            ),
            body: Container(
              margin: EdgeInsets.only(
                top: deviceSize.height * 0.05,
                left: deviceSize.width * 0.15,
                right: deviceSize.width * 0.15,
                bottom: deviceSize.height * 0.02,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      bottom: deviceSize.height * 0.02,
                    ),
                    child: Text(
                      "ID of your ballot box",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 20),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      bottom: deviceSize.height * 0.02,
                    ),
                    width: deviceSize.width * 0.4,
                    child: TextFormField(
                      initialValue: ballotId.toString(),
                      textAlign: TextAlign.center,
                      enabled: false,
                      onTap: () {
                        print('klik');
                      },
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                      decoration: InputDecoration(
                        suffixIcon: LinearGradientMask(child: Icon(Icons.copy)),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: deviceSize.height * 0.07),
                    alignment: Alignment.center,
                    child: LinearGradientMask(
                      child: QrImage(
                        data: ballotId.toString(),
                        version: QrVersions.auto,
                        size: deviceSize.width * 0.6,
                        foregroundColor: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: deviceSize.height * 0.08),
                    height: deviceSize.height * 0.05,
                    width: deviceSize.width * 0.8,
                    child: ElevatedButton(
                      onPressed: () {
                        voteEvent
                            .mapEventsToStates(const VoteEvents.showBallotBox())
                            .then((value) => SchedulerBinding.instance!
                                    .addPostFrameCallback((_) {
                                  Navigator.push<Widget>(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => VoteView(),
                                      ));
                                }));
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(primaryColorDark),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: deviceSize.height * 0.03,
                            margin: EdgeInsets.only(
                                left: deviceSize.width * 0.04,
                                right: deviceSize.width * 0.02),
                            child: FittedBox(
                              fit: BoxFit.fitHeight,
                              child: Text(
                                "Vote",
                                style: const TextStyle(
                                    color: primaryColor,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
