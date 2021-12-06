import 'dart:async';

import 'package:bit_vote/domain/blockchain/blockchain_value_objects.dart';
import 'package:bit_vote/domain/core/errors.dart';
import 'package:bit_vote/shared/app_colors.dart';
import 'package:bit_vote/shared/spinner_dialog.dart';
import 'package:bit_vote/shared/string_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../providers.dart';

class ResultView extends ConsumerWidget {
  final formKey = GlobalKey<FormState>();

  ResultView(this.ballotBoxId);

  late final Id ballotBoxId;

  late Timer _timer;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final deviceSize = MediaQuery.of(context).size;
    String appbarTitle = "Ballot";

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: backgroundColor,
        appBar: AppBar(
          title: Text(
            appbarTitle,
            style: TextStyle(color: primaryColor),
          ),
          backgroundColor: backgroundColorLight,
          iconTheme: IconThemeData(
            color: primaryColor, //change your color here
          ),
          centerTitle: true,
        ),
        body: watch(resultProvider(ballotBoxId)).when(
            data: (either) {
              return either.fold((failure) => Container(), (ballotBox) {
                return Column(
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
                          ballotBox.topic.valueObject!.fold(
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
                      height: deviceSize.height * 0.6,
                      child: ListView.builder(
                        itemCount: ballotBox.candidates.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.fromLTRB(
                                  deviceSize.width * 0.1,
                                  deviceSize.height * 0.01,
                                  deviceSize.width * 0.1,
                                  deviceSize.height * 0.02),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                gradient: isPassed(
                                            ballotBox.endTime.toString()) &&
                                        (ballotBox.votes.indexOf(ballotBox.votes
                                                .reduce(
                                                    (a, b) => a > b ? a : b)) ==
                                            index)
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
                                  color: Colors.transparent,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                ),
                                alignment: Alignment.topCenter,
                                child: TextFormField(
                                  initialValue: ballotBox.candidates[index],
                                  enabled: false,
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
                                      child: Text(
                                        "${index + 1}.",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: primaryColor,
                                            fontSize: 18),
                                      ),
                                    ),
                                    suffix: Container(
                                      child: Text(
                                        isPassed(ballotBox.endTime.toString())
                                            ? "${(bigIntToInt(ballotBox.votes[index]) / (ballotBox.votes.fold(0, ((a, b) => a + bigIntToInt(b)))) * 100).toInt()} %"
                                            : "",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: primaryColor,
                                            fontSize: 14),
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
                    Container(
                        margin: EdgeInsets.only(
                            top: deviceSize.height * 0.04,
                            bottom: deviceSize.height * 0.025),
                        height: deviceSize.height * 0.05,
                        alignment: Alignment.center,
                        width: deviceSize.width * 0.8,
                        child: Center(
                          child: Text(
                            isPassed(ballotBox.endTime.toString())
                                ? "Election has concluded."
                                : "Election concludes in ${timeLeft(ballotBox.endTime.toString())}.",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontSize: 14),
                          ),
                        )),
                  ],
                );
              });
            },
            loading: () => SpinnerDialog("Loading ballot..."),
            error: (err, stack) {
              print('Error ${stack.toString()}');
            }),
      ),
    );
  }
}
