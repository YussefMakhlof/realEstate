import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:realestate/Material/responsive.dart';
import '../Constant.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: keySecondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(
              flex: 2,
            ),
            Image(

              image: AssetImage('images/logo.jpg'),
              width: 100.0,
            ),
            Spacer(
              flex: 2,
            ),
            Text(
              'Real Estate',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              'Modern home with\ngreate interior design',
              textAlign: TextAlign.center,
              maxLines: 2,
              style: TextStyle(height: 1.5, fontSize: 12,fontWeight: FontWeight.w200),
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
