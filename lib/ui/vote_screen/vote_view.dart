import 'package:bit_vote/domain/core/errors.dart';
import 'package:bit_vote/logic/vote/vote_events.dart';
import 'package:bit_vote/shared/app_colors.dart';
import 'package:bit_vote/shared/custom_snackbar.dart';
import 'package:bit_vote/shared/linear_gradient_mask.dart';
import 'package:bit_vote/shared/spinner_dialog.dart';
import 'package:bit_vote/ui/menu_screen/menu_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../providers.dart';

class VoteView extends ConsumerWidget {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final deviceSize = MediaQuery.of(context).size;

    final formStates = watch(voteProvider);
    final formEvents = watch(voteProvider.notifier);

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
          SchedulerBinding.instance!.addPostFrameCallback((_) {
            Navigator.pushAndRemoveUntil<Widget>(
                context,
                MaterialPageRoute(
                  builder: (context) => MenuView(),
                ), ModalRoute.withName("MenuView"));
          });
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
              "Vote",
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
                            bottom: deviceSize.height * 0.02),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.white),
                        child: Container(
                          padding: EdgeInsets.only(
                              left: deviceSize.width * 0.025,
                              right: deviceSize.width * 0.025,
                              top: deviceSize.height * 0.02,
                              bottom: deviceSize.height * 0.02),
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            color: backgroundColorLight,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          child: Text(
                            formStates.topic.valueObject!.fold(
                                (l) => throw UnExpectedValueError(l), (r) => r),
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: deviceSize.height * 0.65,
                        child: ListView.builder(
                          itemCount: formStates.candidates.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                formEvents.mapEventsToStates(
                                    VoteEvents.onCandidateSelected(
                                        candidateId: BigInt.from(index + 1)));
                              },
                              child: Container(
                                margin: EdgeInsets.fromLTRB(
                                    deviceSize.width * 0.1,
                                    deviceSize.height * 0.01,
                                    deviceSize.width * 0.1,
                                    deviceSize.height * 0.02),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  gradient:
                                      index + 1 == formStates.selectedCandidate
                                          ? LinearGradient(
                                              colors: [
                                                Colors.red,
                                                Colors.deepPurpleAccent
                                              ],
                                              tileMode: TileMode.mirror,
                                            )
                                          : LinearGradient(
                                              colors: [
                                                backgroundColorLight,
                                                backgroundColorLight
                                              ],
                                              tileMode: TileMode.mirror,
                                            ),
                                ),
                                child: Container(
                                  margin: EdgeInsets.all(2),
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
                                    enabled: false,
                                    initialValue:
                                        formStates.candidates[index],
                                    textAlign: TextAlign.center,
                                    textAlignVertical: TextAlignVertical.center,
                                    maxLines: null,
                                    decoration: new InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      prefix: Container(
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
                                      contentPadding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 15,
                                          top: 15,
                                          right: 15),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: deviceSize.height * 0.005),
                height: deviceSize.height * 0.05,
                width: deviceSize.width * 0.8,
                child: ElevatedButton(
                  onPressed: () {
                    formEvents.mapEventsToStates(
                      const VoteEvents.vote(),
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
        if (formStates.isSubmitting) SpinnerDialog(formStates.status),
      ]),
    );
  }
}
