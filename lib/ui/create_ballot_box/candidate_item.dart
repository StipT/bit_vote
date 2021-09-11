import 'package:bit_vote/shared/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CandidateItem extends StatelessWidget {
  const CandidateItem({
    required this.name,
    required this.comment,
    required this.createdAt,
  });

  final String? name;
  final String? comment;
  final String? createdAt;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      color: primaryColor,
      margin: EdgeInsets.only(
          bottom: deviceSize.height * 0.01,
          left: deviceSize.width * 0.01,
          right: deviceSize.width * 0.01),
      padding: EdgeInsets.fromLTRB(
          deviceSize.width * 0.01, deviceSize.height * 0.01,
          deviceSize.width * 0.01, deviceSize.height * 0.01),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 5),
                    child: const Icon(
                      Icons.person,
                      color: primaryColorDark,
                    ),
                  ),
                  SizedBox(
                    width: deviceSize.width * 0.6,
                    child: Text(
                      name!,
                      maxLines: 2,
                      overflow: TextOverflow.fade,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: primaryColorDark),
                    ),
                  ),
                ],
              ),
              Expanded(
                flex: 2,
                child: Text(
                  createdAt!,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 10,
                      color: Theme
                          .of(context)
                          .primaryColorDark),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.all(5),
            child: Text(
              comment!,
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),);
  }
}