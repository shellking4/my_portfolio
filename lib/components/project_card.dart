import 'package:flutter/material.dart';
import 'package:my_portfolio/components/responsive.dart';
import 'package:my_portfolio/models/Project.dart';
import 'package:my_portfolio/utils/constants.dart';


class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Spacer(),
          Text(
            project.description!,
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
          Spacer(),
          // TextButton(
          //   onPressed: () {},
          //   child: Text(
          //     "Read More >>",
          //     style: TextStyle(color: primaryColor),
          //   ),
          // ),
        ],
      ),
    );
  }
}
