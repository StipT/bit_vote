import 'package:bit_vote/domain/core/errors.dart';
import 'package:bit_vote/shared/app_colors.dart';
import 'package:bit_vote/shared/linear_gradient_mask.dart';
import 'package:bit_vote/shared/spinner_dialog.dart';
import 'package:bit_vote/shared/string_util.dart';
import 'package:bit_vote/ui/result_screen/result_view.dart';
import 'package:dartz/dartz.dart';
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

    return SafeArea(
      child: Scaffold(
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
        body: watch(recentBallotsProvider).when(
            data: (either) {
              return either.fold((failure) => Container(), (ballotBoxes) {
                return Container(
                  child: ListView.builder(
                    itemCount: ballotBoxes.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(
                          top: deviceSize.height * 0.02,
                          left: deviceSize.width * 0.02,
                          right: deviceSize.width * 0.02,
                        ),
                        child: ListTile(
                          onTap: () => Navigator.push<Widget>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ResultView(ballotBoxes[index].id),
                              ),),
                          trailing:
                              isPassed(ballotBoxes[index].endTime.toString())
                                  ? LinearGradientMask(
                                    child: Icon(
                                        Icons.done_all,
                                      ),
                                  )
                                  : Icon(
                                  Icons.access_time_outlined,
                                  color: Colors.green,
                                    ),
                          tileColor: backgroundColorLight,
                          title: Container(
                            margin: EdgeInsets.only(left: deviceSize.width * 0.03),
                            child: Text(
                              ballotBoxes[index]
                                  .topic
                                  .valueObject!
                                  .fold((l) => throw UnExpectedValueError(l), id),
                              textAlign: TextAlign.start,
                              maxLines: 2,
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                );
              });
            },
            loading: () => SpinnerDialog("Loading ballots..."),
            error: (err, stack) {
              print('Error ${stack.toString()}');
            }),
      ),
    );
  }
}

/*




 */
