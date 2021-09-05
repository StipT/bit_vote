import 'package:bit_vote/shared/app_colors.dart';
import 'package:bit_vote/shared/linear_gradient_mask.dart';
import 'package:bit_vote/shared/spinner_dialog.dart';
import 'package:bit_vote/ui/election_screen/election_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../providers.dart';

class RecentBallotsView extends ConsumerWidget {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final deviceSize = MediaQuery.of(context).size;

    final formStates = watch(recentBallotsProvider);
    final formEvents = watch(recentBallotsProvider.notifier);

    /*
    formStates.transactionFailureOrSuccess.fold(
          () {},
          (either) =>
          either.fold(
                (failure) {
              print('FAILURE');

              SchedulerBinding.instance!.addPostFrameCallback((_) {
                buildCustomSnackBar(
                    context: context,
                    flashBackground: Colors.red,
                    icon: Icons.warning_rounded,
                    content: Text(
                      failure
                          .maybeMap(
                        transactionFailed: (value) {
                          return "Transaction error on the blockchain.";
                        },
                        serverError: (value) {
                          return 'Server error occurred';
                        }, orElse: () { return ""; },
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
                Navigator.push<Widget>(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ShareView(),
                    ));
              });
            },
          ),
    );

     */

    return SafeArea(
      child: Stack(children: [
        Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: backgroundColor,
          appBar: AppBar(
            title: Text(
              "Recent ballots",
              style: TextStyle(color: primaryColor),
            ),
            backgroundColor: backgroundColorLight,
            iconTheme: IconThemeData(
              color: primaryColor, //change your color here
            ),
            centerTitle: true,
          ),
          body: Container(
            child: ListView.builder(
              itemCount: formStates.candidates.length + 12,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(
                    top: deviceSize.height * 0.02,
                    left: deviceSize.width * 0.02,
                    right: deviceSize.width * 0.02,
                  ),
                  child: ListTile(
                    trailing: LinearGradientMask(
                        child: Icon(Icons.access_time_outlined)),
                    tileColor: backgroundColorLight,
                    title: Text("sdasdasd"),
                    leading: LinearGradientMask(child: Icon(Icons.check)),
                  ),
                );
              },
            ),
          ),
        ),
        if (formStates.isSubmitting) SpinnerDialog(formStates.status),
      ]),
    );
  }
}
