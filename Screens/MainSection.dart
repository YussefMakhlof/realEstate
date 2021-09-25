import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realestate/Screens/HomeBanner.dart';
import 'package:realestate/widget/main/Recommendations.dart';
import 'package:realestate/widget/main/projects.dart';
import 'IconInfo.dart';

class MainSection extends StatelessWidget {
  const MainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          HomeBanner(),
          IconInfo(),
          Projects(),
          Recommendation(),
        ],
      ),
    );
  }
}
