import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:realestate/Material/responsive.dart';
import 'package:realestate/widget/Constant.dart';
import 'Goals.dart';
import 'Info.dart';
import 'Logo.dart';

class SideMenuSection extends StatelessWidget {
  const SideMenuSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
          child: Column(
        children: [
          Logo(),
          Expanded(
              child: SingleChildScrollView(
            padding: EdgeInsets.all(keyDefaultPadding / 2),
            child: Column(
              children: [

                Info(),
                Divider(),
                Goals(),
                SizedBox(
                  height: keyDefaultPadding,
                ),
                Divider(),
                TextButton(
                  onPressed: () {},
                  child: FittedBox(
                    child: Row(
                      children: [
                        SvgPicture.asset('icons/download.svg'),
                      SizedBox(width: 10,),
                        Text(
                          'Download Brochure',
                          style: TextStyle(
                            color: keyBodyTextColor,
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: keyDefaultPadding*2),
                  color: keySecondaryColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(onPressed: (){}, icon: SvgPicture.asset('icons/github.svg'),),
                          IconButton(onPressed: (){}, icon: SvgPicture.asset('icons/linkedin.svg'),),
                          IconButton(onPressed: (){}, icon: SvgPicture.asset('icons/dribble.svg'),),
                          IconButton(onPressed: (){}, icon: SvgPicture.asset('icons/twitter.svg'),),

                        ],
                      ),
                  ),
                  ),

              ],
            ),
          )),
        ],
      )),
    );
  }
}
