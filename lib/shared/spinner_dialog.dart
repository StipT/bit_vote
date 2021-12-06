import 'package:bit_vote/shared/linear_gradient_mask.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'app_colors.dart';

class SpinnerDialog extends StatelessWidget {
  SpinnerDialog(this.status);

  final String status;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black54,
      body: WillPopScope(
        onWillPop: () async => false,
        child: Container(
          color: Colors.black38,
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                color: backgroundColorLight,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              padding: EdgeInsets.fromLTRB(
                  deviceSize.width * 0.01,
                  deviceSize.height * 0.02,
                  deviceSize.width * 0.01,
                  deviceSize.height * 0.02),
              width: deviceSize.width * 0.6,
            //  height: deviceSize.height * 0.3,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  LinearGradientMask(
                    child: SpinKitSpinningLines(
                      color: primaryColor,
                      size: MediaQuery.of(context).size.height * 0.2,
                    ),
                  ),
                  status != ""
                      ? Container(
                          margin: EdgeInsets.fromLTRB(
                              deviceSize.width * 0.01,
                              deviceSize.height * 0.03,
                              deviceSize.width * 0.01,
                              deviceSize.height * 0.01),
                          child: Text(
                            status,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
