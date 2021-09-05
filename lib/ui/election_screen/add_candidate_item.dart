import 'package:bit_vote/shared/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddCandidateItem extends StatelessWidget {
  AddCandidateItem(this.onPressed);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => onPressed(),
      child: Container(
        margin: EdgeInsets.only(
          left: deviceSize.width * 0.3,
          right: deviceSize.width * 0.3,
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: backgroundColorLight,
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: Container(
          alignment: Alignment.center,
          child: Icon(
            Icons.add,
            size: deviceSize.height * 0.05,
          ),
          margin: EdgeInsets.all(deviceSize.height * 0.01),
        ),
      ),
    );
  }
}
