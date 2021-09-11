import 'package:bit_vote/logic/firestore/firestore_events.dart';
import 'package:bit_vote/logic/vote/vote_events.dart';
import 'package:bit_vote/shared/app_colors.dart';
import 'package:bit_vote/shared/linear_gradient_mask.dart';
import 'package:bit_vote/ui/auth_screen/login_view.dart';
import 'package:bit_vote/ui/create_ballot_box/create_ballot_box.dart';
import 'package:bit_vote/ui/menu_screen/qr_scanner_view.dart';
import 'package:bit_vote/ui/recent_ballots_screen/recent_ballots_view.dart';
import 'package:bit_vote/ui/vote_screen/vote_view.dart';
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import "package:flutter_svg/flutter_svg.dart";
import 'package:permission_handler/permission_handler.dart';

import '../../providers.dart';

Future<PermissionStatus> _getCameraPermission() async {
  var status = await Permission.camera.status;
  if (!status.isGranted) {
    final result = await Permission.camera.request();
    return result;
  } else {
    return status;
  }
}

class MenuView extends ConsumerWidget {
  bool firstBuild = true;

  void _initUser(ScopedReader watch) {
    if (firstBuild) {
      SchedulerBinding.instance!.addPostFrameCallback((_) {
        watch(firestoreProvider.notifier)
            .mapEventsToStates(const FirestoreEvents.readUserData());
      });
      firstBuild = false;
    }
  }

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final voteEvent = watch(voteProvider.notifier);
    final voteStates = watch(voteProvider);
    _initUser(watch);
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: backgroundColor,
      body: Container(
        margin: EdgeInsets.only(
            left: deviceSize.width * 0.1, right: deviceSize.width * 0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: deviceSize.width * 0.4,
              padding: EdgeInsets.only(top: deviceSize.height * 0.08),
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: ConstrainedBox(
                  constraints: const BoxConstraints(minWidth: 1, minHeight: 1),
                  child: SvgPicture.asset(
                    "assets/images/bitVote_app_logo.svg",
                    height: deviceSize.height * 0.2,
                    width: deviceSize.width * 0.4,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: deviceSize.height * 0.05,
              width: deviceSize.width * 0.9,
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  "blockchain voting made easy.",
                  style: const TextStyle(
                    color: primaryColor,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: deviceSize.height * 0.05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: deviceSize.height * 0.15,
                    width: deviceSize.width * 0.8,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push<Widget>(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CreateBallotBoxView(),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            backgroundColorLight),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: deviceSize.width * 0.05),
                          SvgPicture.asset(
                            "assets/images/bitVote_icon.svg",
                            width: deviceSize.width * 0.15,
                            //height: deviceSize.height * 0.07,
                            color: primaryColor,
                          ),
                          Container(
                              height: deviceSize.height * 0.03,
                              margin: EdgeInsets.only(
                                  left: deviceSize.width * 0.04,
                                  right: deviceSize.width * 0.02),
                              child: FittedBox(
                                fit: BoxFit.fitHeight,
                                child: Text(
                                  "New ballot box",
                                  style: const TextStyle(color: primaryColor),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: deviceSize.height * 0.15,
                    width: deviceSize.width * 0.9,
                    margin: EdgeInsets.only(top: deviceSize.height * 0.04),
                    child: ElevatedButton(
                      onPressed: () {
                        showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (context) => AnimatedPadding(
                                  duration: Duration(milliseconds: 150),
                                  curve: Curves.easeOut,
                                  padding: EdgeInsets.only(
                                      bottom: MediaQuery.of(context)
                                          .viewInsets
                                          .bottom),
                                  child: Container(
                                    height: deviceSize.height * 0.4,
                                    decoration: BoxDecoration(
                                      color: backgroundColor,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: deviceSize.height * 0.03,
                                              left: deviceSize.width * 0.1,
                                              right: deviceSize.width * 0.1),
                                          child: Column(
                                            children: [
                                              TextFormField(
                                                decoration: new InputDecoration(
                                                  suffixIcon: Icon(
                                                    Icons.paste,
                                                    color: primaryColor,
                                                  ),
                                                  border: InputBorder.none,
                                                  focusedBorder:
                                                      InputBorder.none,
                                                  enabledBorder:
                                                      InputBorder.none,
                                                  errorBorder: InputBorder.none,
                                                  disabledBorder:
                                                      InputBorder.none,
                                                  contentPadding:
                                                      EdgeInsets.only(
                                                          left: 15,
                                                          bottom: 5,
                                                          top: 11,
                                                          right: 15),
                                                  hintText: "election address",
                                                ),
                                                textAlign: TextAlign.center,
                                                onChanged: (value) =>
                                                    voteEvent.mapEventsToStates(
                                                  VoteEvents.onBallotIdChange(
                                                    id: BigInt.from(
                                                      int.parse(value),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 2,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                      colors: [
                                                        Colors.red,
                                                        Colors.deepPurpleAccent
                                                      ],
                                                      begin:
                                                          const FractionalOffset(
                                                              0.0, 0.5),
                                                      end:
                                                          const FractionalOffset(
                                                              0.5, 0.0),
                                                      stops: [0.0, 1.0],
                                                      tileMode:
                                                          TileMode.mirror),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: deviceSize.height * 0.02,
                                              bottom: deviceSize.height * 0.01),
                                          height: deviceSize.height * 0.05,
                                          width: deviceSize.width * 0.8,
                                          color: backgroundColorLight,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              voteEvent
                                                  .mapEventsToStates(VoteEvents
                                                      .showBallotBox())
                                                  .then(
                                                    (value) =>
                                                        Navigator.push<Widget>(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            VoteView(),
                                                      ),
                                                    ),
                                                  );
                                            },
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                          Color>(
                                                      backgroundColorLight),
                                              shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                            ),
                                            child: Container(
                                                height:
                                                    deviceSize.height * 0.03,
                                                margin: EdgeInsets.only(
                                                    left:
                                                        deviceSize.width * 0.04,
                                                    right: deviceSize.width *
                                                        0.02),
                                                child: FittedBox(
                                                  fit: BoxFit.fitHeight,
                                                  child: Text(
                                                    "Find",
                                                    textAlign: TextAlign.center,
                                                    style: const TextStyle(
                                                        color: primaryColor),
                                                  ),
                                                )),
                                          ),
                                        ),
                                        Container(
                                          height: deviceSize.height * 0.06,
                                          alignment: Alignment.center,
                                          child: Text(
                                            "OR",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                            top: deviceSize.height * 0.01,
                                          ),
                                          height: deviceSize.height * 0.10,
                                          width: deviceSize.width * 0.8,
                                          child: ElevatedButton(
                                            onPressed: () async {
                                              PermissionStatus status =
                                                  await _getCameraPermission();
                                              if (status.isGranted) {
                                                Navigator.of(context)
                                                    .push(MaterialPageRoute(
                                                  builder: (context) =>
                                                      QRScannerView(),
                                                ));
                                              }
                                            },
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                          Color>(
                                                      backgroundColorLight),
                                              shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                    width: deviceSize.width *
                                                        0.075),
                                                LinearGradientMask(
                                                  child: Icon(
                                                    Icons.qr_code_scanner,
                                                    size: deviceSize.height *
                                                        0.07,
                                                    color: primaryColor,
                                                  ),
                                                ),
                                                Container(
                                                    height: deviceSize.height *
                                                        0.03,
                                                    margin: EdgeInsets.only(
                                                        left: deviceSize.width *
                                                            0.04,
                                                        right:
                                                            deviceSize.width *
                                                                0.02),
                                                    child: FittedBox(
                                                      fit: BoxFit.fitHeight,
                                                      child: Text(
                                                        "Scan QR code",
                                                        style: const TextStyle(
                                                            color:
                                                                primaryColor),
                                                      ),
                                                    ))
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ));
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            backgroundColorLight),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: deviceSize.width * 0.05),
                          SvgPicture.asset(
                            "assets/images/ballot_box.svg",
                            width: deviceSize.width * 0.15,
                            color: primaryColor,
                          ),
                          Container(
                              height: deviceSize.height * 0.03,
                              margin: EdgeInsets.only(
                                  left: deviceSize.width * 0.04),
                              child: FittedBox(
                                fit: BoxFit.fitHeight,
                                child: Text(
                                  "Find ballot box",
                                  style: const TextStyle(color: primaryColor),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: deviceSize.height * 0.15,
                    width: deviceSize.width * 0.8,
                    margin: EdgeInsets.only(top: deviceSize.height * 0.04),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push<Widget>(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RecentBallotsView(),
                            ));
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            backgroundColorLight),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: deviceSize.width * 0.05),
                          SvgPicture.asset(
                            "assets/images/recent_ballots_icon.svg",
                            width: deviceSize.width * 0.15,
                            color: primaryColor,
                          ),
                          Container(
                              height: deviceSize.height * 0.03,
                              margin: EdgeInsets.only(
                                  left: deviceSize.width * 0.04),
                              child: FittedBox(
                                fit: BoxFit.fitHeight,
                                child: Text(
                                  "Recent ballots",
                                  style: const TextStyle(color: primaryColor),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(top: deviceSize.height * 0.025),
        child: FloatingActionButton(
          backgroundColor: backgroundColorLight,
          child:
              Container(child: LinearGradientMask(child: Icon(Icons.logout))),
          onPressed: () {
            Navigator.pushAndRemoveUntil<Widget>(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginView(),
                ),
                ModalRoute.withName("LoginView"));
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
