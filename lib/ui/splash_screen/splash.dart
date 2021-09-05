import 'package:bit_vote/ui/auth_screen/login_view.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Splash extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {

    return Scaffold(
      body: Center(
        child: Image.asset("assets/images/bitVote_image.png"),
      ),
    );
  }
}
