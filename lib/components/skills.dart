import 'package:flutter/material.dart';
import 'package:my_portfolio/components/animated_circular_progress_indicator.dart';
import 'package:my_portfolio/utils/constants.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text("Skills",
            style: Theme.of(context).textTheme.subtitle2),
        ),
        Row(
          children: <Widget>[
          Expanded(
            child: AnimatedCircularProgressIndicator(
              label: "Django",
              percentage: 0.7,
            ),
          ),
          SizedBox(width: defaultPadding),
          Expanded(
            child: AnimatedCircularProgressIndicator(
              label: "Flutter",
              percentage: 0.7,
            ),
          ),
          SizedBox(width: defaultPadding),
          Expanded(
            child: AnimatedCircularProgressIndicator(
              label: "NestJS",
              percentage: 0.8,
            ),
          ),
        ],
      )
    ]);
  }
}