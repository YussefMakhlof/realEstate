import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:realestate/widget/Constant.dart';

class IconInfo extends StatelessWidget {
  const IconInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(keyDefaultPadding*3),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          buildIconInfo(
              context: context,
              icon: Icons.supervisor_account,
              text: '+69',
              label: 'clients'),
          buildIconInfo(
              context: context,
              icon: Icons.location_on,
              text: '+139',
              label: 'projects'),
          buildIconInfo(
              context: context,
              icon: Icons.public,
              text: '+30',
              label: 'countries'),
          buildIconInfo(
              context: context,
              icon: Icons.star,
              text: '13K+',
              label: 'reviews'),
        ],
      ),
    );
  }

  Widget buildIconInfo({
    required BuildContext context,
    required IconData icon,
    required String text,
    required String label,
  }) {
    return Column(

      children: [
        Icon(icon,size:50,color:Colors.white),
        Text(
          '$text',
          style: Theme.of(context).textTheme.headline6,
        ),
        Text(
          '$label',
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}
