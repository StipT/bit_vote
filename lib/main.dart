import 'package:bit_vote/repository/firebase_authentication.dart';
import 'package:bit_vote/shared/app_colors.dart';
import 'package:bit_vote/ui/auth_screen/login_view.dart';
import 'package:bit_vote/ui/menu_screen/menu_view.dart';
import 'package:bit_vote/ui/splash_screen/splash.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    late Widget _homeView;

    return FutureBuilder(
        future: FirebaseAuthentication(FirebaseAuth.instance).getSignedInUser(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            _homeView = Splash();
          }
          return MaterialApp(
            title: "bitVote",
            themeMode: ThemeMode.light,
            home: snapshot.data == null
                ? _homeView = LoginView()
                : _homeView = MenuView(),
            supportedLocales: const [
              Locale('en', ''),
              //   Locale('hr', ''),
            ],
            theme: ThemeData(
              brightness: Brightness.dark,
              primaryColor: primaryColor,
              primarySwatch: primarySwatch,
              primaryColorLight: primaryColorLight,
              primaryColorDark: backgroundColor,
              accentColor: accent,
              fontFamily: "Roboto",
            ),
          );
        });
  }
}
