import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realestate/Material/RecommendationMaterial.dart';

import '../Constant.dart';

class Recommendation extends StatelessWidget {
  const Recommendation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(keyDefaultPadding / 2),
            child: Text(
              'Client Recommendations',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          SizedBox(height: 20,),
          SingleChildScrollView(
          scrollDirection: Axis.horizontal,

          child: Row(
            children: List.generate(demoRecommendations.length,(index)=>Padding(

            padding: EdgeInsets.only(right: keyDefaultPadding),
            child:RecommendationCard(
                Recommendation: demoRecommendations[index],
            ),
    ),
    ),
    ),
    ),
  ],
      ),
    );
  }
}
class RecommendationCard extends StatelessWidget {
  final RecommendationMaterial Recommendation;


  RecommendationCard({required this.Recommendation});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding:EdgeInsets.all(keyDefaultPadding),
      color: keySecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
                backgroundImage: AssetImage(Recommendation.image!),

            ),
            title: Text(Recommendation.name!,style: Theme.of(context).textTheme.subtitle2),
            subtitle: Text(Recommendation.source!,style: Theme.of(context).textTheme.bodyText1,),

          ),
          SizedBox(height: keyDefaultPadding/2,),
          Text(Recommendation.text!,style: TextStyle(height: 1.5,),overflow: TextOverflow.ellipsis,maxLines: 4,)
        ],
      ),
    );
  }
}

