import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:realestate/Material/responsive.dart';
import 'package:realestate/widget/Constant.dart';
import 'package:realestate/widget/Constant.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.95,
      child: Stack(

        fit: StackFit.expand,
        children: [
          Image.asset('images/buuilding1.jpeg', fit: BoxFit.cover,
         ),
          Container(
            color: keyDarkColor.withOpacity(0.10),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(keyDefaultPadding),
                child: Text(
                  'Build a great future \nfor all of us',
                  style: Responsive.isDesktop(context)?
                  Theme.of(context).textTheme.headline3! : Theme.of(context).textTheme.headline5!,
                ),

              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(keyDefaultPadding),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(keyDefaultPadding / 2),
                    child: Text(
                      'CONTACT US',
                      style: TextStyle(
                        color: Color(0xff001233),
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
