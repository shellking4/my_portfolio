import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/constants.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    Key? key, required this.label, required this.percentage,
  }) : super(key: key);

  final String label;
  final double percentage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: TweenAnimationBuilder(
        duration: defaultDuration,
        tween: Tween<double>(begin: 0, end: percentage),
        builder: (BuildContext context, double value, Widget? child) =>
            Column(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(label, style: TextStyle(color: Colors.white)),
              Text((value * 100).toInt().toString() + "%")
            ],
          ),
          SizedBox(
            height: defaultPadding / 2,
          ),
          LinearProgressIndicator(
            value: value,
            color: primaryColor,
            backgroundColor: darkColor,
          ),
        ]),
      ),
    );
  }
}