import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/constants.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  const AnimatedCircularProgressIndicator({
    Key? key, 
    required this.label, 
    required this.percentage,
  }) : super(key: key);

  final String label;
  final double percentage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            duration: defaultDuration,
            tween: Tween<double>(begin: 0, end: percentage),
            builder: (BuildContext context, double value, Widget? child) =>
                Stack(fit: StackFit.expand, children: <Widget>[
              CircularProgressIndicator(
                value: value,
                color: primaryColor,
                backgroundColor: darkColor,
              ),
              Center(
                child: Text(
                  (value * 100).toInt().toString() + "%",
                  style: Theme.of(context).textTheme.subtitle2),
              )
            ]),
          ),
        ),
        SizedBox(height: defaultPadding / 2),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2),
      ],
    );
  }
}