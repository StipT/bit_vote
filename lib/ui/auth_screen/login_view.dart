import 'package:bit_vote/logic/auth/auth_events.dart';
import 'package:bit_vote/logic/firestore/firestore_events.dart';
import 'package:bit_vote/shared/app_colors.dart';
import 'package:bit_vote/shared/custom_snackbar.dart';
import 'package:bit_vote/ui/auth_screen/register_view.dart';
import 'package:bit_vote/ui/election_screen/election_view.dart';
import 'package:bit_vote/ui/menu_screen/menu_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../providers.dart';

class LoginView extends ConsumerWidget {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final deviceSize = MediaQuery.of(context).size;

    final authStates = watch(authProvider);
    final authEvents = watch(authProvider.notifier);

    final firestoreStates = watch(firestoreProvider);
    final firestoreEvents = watch(firestoreProvider.notifier);

    authStates.authFailureOrSuccess.fold(
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
                      orElse: () => '',
                      emailAlreadyInUse: (value) => 'User already exists',
                      serverError: (value) {
                        return 'Server error occurred';
                      },
                      invalidEmailAndPasswordCombination: (value) {
                        return 'Invalid email or password';
                      }),
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: Colors.white),
                ));
          });
        },
        (success) {
          print('SUCCESS');
          firestoreEvents
              .mapEventsToStates(const FirestoreEvents.readUserData());
        },
      ),
    );

    firestoreStates.requestFailureOrSuccess.fold(
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
                    orElse: () => '',
                    unauthorized: (value) {
                      return "Unauthorized request";
                    },
                    serverError: (value) {
                      return 'Server error occurred';
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
            buildCustomSnackBar(
                context: context,
                flashBackground: Colors.green,
                icon: CupertinoIcons.check_mark_circled_solid,
                content: Text(
                  'Login successful',
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: Colors.white),
                ));

            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => MenuView(),
                ),
                (route) => false);
          });
        },
      ),
    );

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: backgroundColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: deviceSize.height * 0.1),
              child: Column(mainAxisAlignment: MainAxisAlignment.start,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      "assets/images/bitVote_app_logo.svg",
                      height: deviceSize.height * 0.2,
                      width: deviceSize.width * 0.4,
                      color: Colors.white,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: deviceSize.height * 0.01,
                        bottom: deviceSize.height * 0.01,
                      ),
                      child: Text(
                        "Please sign in to continue.",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ]),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                  deviceSize.width * 0.05,
                  deviceSize.height * 0.05,
                  deviceSize.width * 0.05,
                  deviceSize.height * 0.05),
              padding: EdgeInsets.only(
                  top: deviceSize.height * 0.05,
                  bottom: deviceSize.height * 0.05),
              decoration: BoxDecoration(
                color: backgroundColorLight,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: deviceSize.width * 0.1,
                              right: deviceSize.width * 0.1),
                          child: Column(
                            children: [
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                onChanged: (value) => authEvents
                                    .mapEventsToStates(AuthEvents.emailChanged(
                                        email: value.toString())),
                                validator: (value) =>
                                    authStates.emailAddress.valueObject!.fold(
                                  (failure) => failure.maybeMap(
                                      orElse: () => null,
                                      invalidEmail: (value) => 'Invalid email'),
                                  (r) => null,
                                ),
                                textInputAction: TextInputAction.next,
                                onEditingComplete: () =>
                                    FocusScope.of(context).nextFocus(),
                                decoration: new InputDecoration(
                                    prefixIcon: Icon(Icons.person),
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    contentPadding: EdgeInsets.only(
                                        left: 15,
                                        bottom: 5,
                                        top: 11,
                                        right: 15),
                                    hintText: "email"),
                              ),
                              Container(
                                height: 2,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                        Colors.red,
                                        Colors.deepPurpleAccent
                                      ],
                                      begin: const FractionalOffset(0.0, 0.5),
                                      end: const FractionalOffset(0.5, 0.0),
                                      stops: [0.0, 1.0],
                                      tileMode: TileMode.mirror),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: deviceSize.width * 0.1,
                              right: deviceSize.width * 0.1,
                              top: deviceSize.height * 0.025),
                          child: Column(
                            children: [
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                textInputAction: TextInputAction.done,
                                obscureText: true,
                                onEditingComplete: () =>
                                    FocusScope.of(context).nextFocus(),
                                validator: (value) =>
                                    authStates.password.valueObject!.fold(
                                  (failure) => failure.maybeMap(
                                    orElse: () => null,
                                    shortPassword: (value) =>
                                        'Very short password',
                                    noUpperCase: (value) =>
                                        'Must contain an uppercase character',
                                    noNumber: (value) =>
                                        'Must contain a number',
                                    noSpecialSymbol: (value) =>
                                        'Must contain a special character',
                                  ),
                                  (r) => null,
                                ),
                                onChanged: (value) =>
                                    authEvents.mapEventsToStates(
                                  AuthEvents.passwordChanged(
                                      password: value.toString()),
                                ),
                                decoration: new InputDecoration(
                                    prefixIcon: Icon(Icons.lock),
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    contentPadding: EdgeInsets.only(
                                        left: 15,
                                        bottom: 5,
                                        top: 11,
                                        right: 15),
                                    hintText: "password"),
                              ),
                              Container(
                                height: 2,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                        Colors.red,
                                        Colors.deepPurpleAccent
                                      ],
                                      begin: const FractionalOffset(0.0, 0.5),
                                      end: const FractionalOffset(0.5, 0.0),
                                      stops: [0.0, 1.0],
                                      tileMode: TileMode.mirror),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.only(top: deviceSize.height * 0.075),
                          height: deviceSize.height * 0.05,
                          width: deviceSize.width * 0.8,
                          child: ElevatedButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                authEvents.mapEventsToStates(
                                  const AuthEvents
                                      .signInWithEmailAndPasswordPressed(),
                                );
                              }
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  primaryColorDark),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
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
                                      "Login",
                                      style: const TextStyle(
                                          color: primaryColor,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                /*
                                      LinearGradientMask(
                                        child: SvgPicture.asset(
                                          "assets/images/bitVote_icon.svg",
                                          height: deviceSize.height * 0.07,
                                          color: Colors.white,
                                        ),
                                      ),

                                       */
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
            Container(
              child: GestureDetector(
                onTap: () => Navigator.push<Widget>(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterView(),
                    )),
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: "Don't have an account?",
                        style: const TextStyle(
                          fontSize: 16,
                          color: primaryColor,
                        ),
                      ),
                      TextSpan(
                        text: " Sign up ",
                        style: const TextStyle(
                          fontSize: 20,
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
