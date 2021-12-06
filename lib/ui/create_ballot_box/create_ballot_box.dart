import 'package:bit_vote/domain/blockchain/dto/election_state.dart';
import 'package:bit_vote/logic/create_ballot_box/create_ballot_events.dart';
import 'package:bit_vote/repository/web3_service.dart';
import 'package:bit_vote/shared/app_colors.dart';
import 'package:bit_vote/shared/custom_snackbar.dart';
import 'package:bit_vote/shared/linear_gradient_mask.dart';
import 'package:bit_vote/shared/spinner_dialog.dart';
import 'package:bit_vote/ui/share_screen/share_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../providers.dart';
import 'add_candidate_item.dart';

class CreateBallotBoxView extends ConsumerWidget {
  final formKey = GlobalKey<FormState>();
  bool firstBuild = true;
  bool isNavigated = false;
  TextEditingController _durationController = TextEditingController();

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final deviceSize = MediaQuery.of(context).size;

    final formStates = watch(createBallotProvider);
    final formEvents = watch(createBallotProvider.notifier);

    if (firstBuild) {
      void Function(String, BigInt, String, String) onBallotBoxCreated =
          (sender, ballotBox, topic, electionState) {
        formEvents.mapEventsToStates(
          CreateBallotEvents.ballotBoxCreated(
              sender: sender,
              ballotBoxId: ballotBox,
              topic: topic,
              electionState: electionState),
        );
      };

      void Function(String, BigInt, BigInt, BigInt) onElectionStart =
          (sender, ballotBox, electionState, endTime) {
        formEvents.mapEventsToStates(
          CreateBallotEvents.ballotBoxStarted(
              sender: sender,
              ballotBoxId: ballotBox,
              electionState: electionState,
              endTime: endTime),
        );
      };

      Web3Service.instance().ballotBoxCreatedEvent(onBallotBoxCreated);
      Web3Service.instance().electionStartedEvent(onElectionStart);
      firstBuild = false;
    }

    formStates.transactionFailureOrSuccess.fold(
      () {},
      (either) => either.fold(
        (failure) {
          SchedulerBinding.instance!.addPostFrameCallback((_) {
            buildCustomSnackBar(
                context: context,
                flashBackground: Colors.red,
                icon: Icons.warning_rounded,
                content: Text(
                  failure.maybeMap(
                    transactionFailed: (value) {
                      return "Transaction error on the blockchain.";
                    },
                    serverError: (value) {
                      return 'Server error occurred';
                    },
                    orElse: () {
                      return "";
                    },
                  ),
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: Colors.white),
                ));
          });
        },
        (success) {
          if (formStates.electionState == ElectionState.CREATED &&
              !isNavigated) {
            isNavigated = true;
            SchedulerBinding.instance!.addPostFrameCallback((_) {
              Navigator.push<Widget>(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ShareView(formStates.id),
                  ));
            });
          }
        },
      ),
    );

    return SafeArea(
      child: Stack(children: [
        Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: backgroundColor,
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "Create ballot box",
              style: TextStyle(color: primaryColor),
            ),
            backgroundColor: backgroundColorLight,
            iconTheme: IconThemeData(
              color: primaryColor, //change your color here
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: deviceSize.width * 0.95,
                        margin: EdgeInsets.only(
                            left: deviceSize.width * 0.025,
                            right: deviceSize.width * 0.025,
                            top: deviceSize.height * 0.02,
                            bottom: deviceSize.height * 0.01),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.white),
                        child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            color: backgroundColorLight,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            textAlignVertical: TextAlignVertical.center,
                            maxLines: null,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            textInputAction: TextInputAction.next,
                            onChanged: (value) => formEvents.mapEventsToStates(
                                CreateBallotEvents.onEditTopicChanged(
                                    topic: value.toString())),
                            onEditingComplete: () =>
                                FocusScope.of(context).nextFocus(),
                            decoration: new InputDecoration(
                                labelStyle: TextStyle(
                                    color: primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic),
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.only(
                                    left: 15, bottom: 15, top: 15, right: 15),
                                hintText: "What is the topic of election?"),
                          ),
                        ),
                      ),
                      Container(
                        height: deviceSize.height * 0.6,
                        child: ListView.builder(
                          itemCount: formStates.candidates.length + 1,
                          itemBuilder: (context, index) {
                            if (index == formStates.candidates.length) {
                              return AddCandidateItem(() {
                                formEvents.mapEventsToStates(
                                  const CreateBallotEvents
                                      .onEditCandidateAdded(),
                                );
                              });
                            } else {
                              return Container(
                                margin: EdgeInsets.fromLTRB(
                                    deviceSize.width * 0.1,
                                    deviceSize.height * 0.01,
                                    deviceSize.width * 0.1,
                                    deviceSize.height * 0.02),
                                padding: EdgeInsets.only(
                                    top: deviceSize.height * 0.01,
                                    left: deviceSize.width * 0.01,
                                    bottom: deviceSize.height * 0.01),
                                decoration: BoxDecoration(
                                  color: backgroundColorLight,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                ),
                                alignment: Alignment.topCenter,
                                child: TextFormField(
                                  initialValue: formStates
                                      .candidates[
                                          formStates.candidates.length - 1]
                                      .name,
                                  onChanged: (value) => formEvents
                                      .mapEventsToStates(CreateBallotEvents
                                          .onEditCandidateName(
                                              candidateId: BigInt.from(index),
                                              candidateName: value.toString())),
                                  textAlign: TextAlign.start,
                                  textAlignVertical: TextAlignVertical.center,
                                  maxLines: null,
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  textInputAction: TextInputAction.next,
                                  onEditingComplete: () =>
                                      FocusScope.of(context).nextFocus(),
                                  decoration: new InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      prefix: Container(
                                        margin: EdgeInsets.only(
                                            right: deviceSize.width * 0.06),
                                        child: LinearGradientMask(
                                          child: Text(
                                            "${index + 1}.",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: primaryColor,
                                                fontSize: 18),
                                          ),
                                        ),
                                      ),
                                      suffixIcon: InkWell(
                                        child: LinearGradientMask(
                                            child: Icon(Icons.clear, size: 24)),
                                        onTap: () {
                                          formEvents.mapEventsToStates(
                                            CreateBallotEvents
                                                .onRemoveCandidate(
                                                    candidateId:
                                                        BigInt.from(index)),
                                          );
                                        },
                                      ),
                                      contentPadding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 15,
                                          top: 15,
                                          right: 15),
                                      hintText: "enter candidate name"),
                                ),
                              );
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: deviceSize.width * 0.7,
                margin: EdgeInsets.only(
                    top: deviceSize.height * 0.02,
                    left: deviceSize.width * 0.025,
                    right: deviceSize.width * 0.025,
                    bottom: deviceSize.height * 0.02),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: backgroundColorLight,
                ),
                child: TextFormField(
                  readOnly: true,
                  controller: _durationController,
                  onTap: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    DatePicker.showTimePicker(context,
                        theme: DatePickerTheme(
                            backgroundColor: backgroundColorLight,
                            cancelStyle: TextStyle(color: Colors.white),
                            itemStyle: TextStyle(color: Colors.white),
                            doneStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            containerHeight: deviceSize.height * 0.25),
                        showTitleActions: true,
                        onChanged: (date) {}, onConfirm: (date) {
                      BigInt duration = BigInt.from((date.hour * 3600) +
                          (date.minute * 60) +
                          date.second);
                      formEvents.mapEventsToStates(
                          CreateBallotEvents.onEditDuration(
                              duration: duration));
                      _durationController.text =
                          "${date.hour}h ${date.minute}m ${date.second}s";
                    }, currentTime: DateTime.now(), locale: LocaleType.en);
                  },
                  validator: (value) {
/*                      if (value == null || value.isEmpty) {
                      return _appLocalizations.getText(
                          "approveRequestDateValidation");
                    } else if (stringToDateTime(value)
                        .isBefore(DateTime.now())) {
                      return _appLocalizations.getText(
                          "approveRequestDateValidationEarlyDate");
                    } else {
                      return null;
                    }*/
                  },
                  enableInteractiveSelection: false,
                  textAlign: TextAlign.center,
                  textAlignVertical: TextAlignVertical.center,
                  maxLines: 1,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  textInputAction: TextInputAction.next,
                  //  onChanged: (value) => formEvents.mapEventsToStates(CreateBallotEvents.onEditDuration(duration: value)),
                  onEditingComplete: () => FocusScope.of(context).nextFocus(),
                  decoration: new InputDecoration(
                      labelStyle: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                          left: 15, bottom: 15, top: 15, right: 15),
                      hintText: "How long will election last?",
                      hintStyle: TextStyle(fontSize: 14)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: deviceSize.height * 0.005),
                height: deviceSize.height * 0.05,
                width: deviceSize.width * 0.8,
                child: ElevatedButton(
                  onPressed: () {
                    formEvents.mapEventsToStates(
                      const CreateBallotEvents.createBallotBox(),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(primaryColorDark),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
                            "Create ballot box",
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
        if (formStates.isSubmitting) SpinnerDialog(formStates.status),
      ]),
    );
  }
}
