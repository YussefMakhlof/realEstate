import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:realestate/Material/ProjectsMaterial.dart';
import 'package:realestate/Material/responsive.dart';

import '../Constant.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(keyDefaultPadding / 2),
            child: Text(
              'Our Project',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Responsive(
            desktop: buildGridView(
              itemCount: domeProjectMaterial.length,
              crossAxsitCount: 3,
              childAspectRatio: 0.75,
              itemBuilder: (context, index) => ProjectCard(
                project: domeProjectMaterial[index],
              ),
            ),
            tablet: buildGridView(
              itemCount: domeProjectMaterial.length,
              crossAxsitCount: MediaQuery.of(context).size.width < 900 ? 2 : 3,
              childAspectRatio: 0.75,
              itemBuilder: (context, index) => ProjectCard(
                project: domeProjectMaterial[index],
              ),
            ),
            mobileLarge: buildGridView(
              itemCount: domeProjectMaterial.length,
              crossAxsitCount: 2,
              childAspectRatio: 0.75,
              itemBuilder: (context, index) => ProjectCard(
                project: domeProjectMaterial[index],
              ),
            ),
            mobile: buildGridView(
              itemCount: domeProjectMaterial.length,
              crossAxsitCount: 1,
              childAspectRatio: 0.75,
              itemBuilder: (context, index) => ProjectCard(
                project: domeProjectMaterial[index],
              ),
            ),
          ),
        ],
      ),
    );
  }

  buildGridView({
    required int itemCount,
    required int crossAxsitCount,
    required double childAspectRatio,
    required IndexedWidgetBuilder itemBuilder,
  }) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount:itemCount,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxsitCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: keyDefaultPadding,
        mainAxisSpacing: keyDefaultPadding,
      ),
   itemBuilder:itemBuilder ,
    );
  }
}

class ProjectCard extends StatelessWidget {
  final ProjectMaterial project;

  const ProjectCard({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      color: keySecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            '${project.image}',
            fit: BoxFit.cover,
          ),
          Text(
            '${project.title}',
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(
            '${project.description}',
            maxLines: 4,
            style: Theme.of(context).textTheme.bodyText2,
          ),
          TextButton(
            onPressed: () {},

              child: Text('More Info >',
                  style: Theme.of(context).textTheme.bodyText1),
            ),
        ],
      ),
    );
  }
}
