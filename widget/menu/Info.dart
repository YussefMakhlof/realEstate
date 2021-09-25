import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realestate/widget/Constant.dart';
class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          buildInfo(title: 'Address', text: 'Al-Minia-Mordet El-Nile'),
          buildInfo(title: 'Country', text: 'Egypt'),
          buildInfo(title: 'Email',    text: 'yussef.Makhlof@nub.edu.eg'),
          buildInfo(title: 'Mobile', text: '01101675983'),
          buildInfo(title: 'Website', text: 'TheGodfatherOrg.com'),

        ],
      );

  }
  Widget buildInfo({required String title, required String text}){

    return Padding(
      padding: const EdgeInsets.only(bottom: keyDefaultPadding/2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$title',style: TextStyle(color: Colors.white,height: 1.5),),
          Text('$text',style: TextStyle(height: 1.5)),
        ],

      ),
    );
  }


}
