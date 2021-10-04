import 'package:bit_vote/logic/auth/auth_events.dart';
import 'package:bit_vote/logic/auth/auth_state_controller.dart';
import 'package:bit_vote/logic/auth/auth_states.dart';
import 'package:bit_vote/repository/firebase_authentication.dart';
import 'package:bit_vote/repository/firestore_service.dart';
import 'package:bit_vote/shared/app_colors.dart';
import 'package:bit_vote/shared/custom_snackbar.dart';
import 'package:bit_vote/shared/linear_gradient_mask.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import 'login_view.dart';

final registerAuthProvider =
    StateNotifierProvider.autoDispose<AuthStateController, AuthStates>((ref) {
  final firebaseAuth = FirebaseAuth.instance;
  final firebaseAuthService = FirebaseAuthentication(firebaseAuth);
  final firestoreService = FirestoreService.instance();
  return AuthStateController(firebaseAuthService, firestoreService);
});

class RegisterView extends ConsumerWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final deviceSize = MediaQuery.of(context).size;

    final registerStates = watch(registerAuthProvider);
    final registerEvents = watch(registerAuthProvider.notifier);
    registerStates.authFailureOrSuccess.fold(
            () {},
            (either) => either.fold((failure) {
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
                          ),
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: Colors.white),
                        ));
                  });
                }, (success) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginView(),
                        maintainState: false,
                      ),
                    );
                },),);

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
                        "Create new account.",
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
                    key: _formKey,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: deviceSize.width * 0.05,
                              right: deviceSize.width * 0.05),
                          child: Column(
                            children: [
                              TextFormField(
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
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                onChanged: (value) => registerEvents
                                    .mapEventsToStates(AuthEvents.emailChanged(
                                        email: value.toString())),
                                validator: (value) => registerStates
                                    .emailAddress.valueObject!
                                    .fold(
                                  (failure) => failure.maybeMap(
                                      orElse: () => null,
                                      invalidEmail: (value) => 'Invalid email'),
                                  (r) => null,
                                ),
                                textInputAction: TextInputAction.next,
                                onEditingComplete: () =>
                                    FocusScope.of(context).nextFocus(),
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
                              left: deviceSize.width * 0.05,
                              right: deviceSize.width * 0.05,
                              top: deviceSize.height * 0.025),
                          child: Column(
                            children: [
                              TextFormField(
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
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                textInputAction: TextInputAction.done,
                                obscureText: true,
                                onEditingComplete: () =>
                                    FocusScope.of(context).nextFocus(),
                                validator: (value) =>
                                    registerStates.password.valueObject!.fold(
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
                                    registerEvents.mapEventsToStates(
                                  AuthEvents.passwordChanged(
                                      password: value.toString()),
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
                              if (_formKey.currentState!.validate()) {
                                registerEvents.mapEventsToStates(
                                  const AuthEvents
                                      .signUpWithEmailAndPasswordPressed(),
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
                                      "Register",
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
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: Container(
          margin: EdgeInsets.only(top: deviceSize.height * 0.025),
          child: FloatingActionButton(
            backgroundColor: backgroundColorLight,
            onPressed: () {
              Navigator.pop(context);
            },
            child: LinearGradientMask(
                child: Icon(
              Icons.arrow_back,
              size: 30,
            )),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      ),
    );
  }
}
