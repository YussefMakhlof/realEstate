import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:realestate/widget/Constant.dart';

class Goals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: keyDefaultPadding),
          child: Text(
            'Goals',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
         Padding(
          padding: const EdgeInsets.only(bottom: 10),

        ),
        buildGoals('Planning stage'),
        buildGoals('Development'),
        buildGoals('Execution phase'),
        buildGoals('New way to living'),
      ],
    );
  }

  Padding buildGoals(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          SvgPicture.asset('icons/check.svg'),
          SizedBox(
            width: keyDefaultPadding / 2,
          ),
          Text('$text'),
        ],
      ),
    );
  }
}
