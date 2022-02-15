import 'package:flutter/material.dart';
import 'package:my_portfolio/components/area_info.dart';
import 'package:my_portfolio/components/my_info.dart';
import 'package:my_portfolio/components/skills.dart';
import 'package:my_portfolio/utils/constants.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: <Widget>[
        MyInfo(),
        Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(defaultPadding),
            child: Column(children: <Widget>[
              AreaInfo(title: "Residence", text: "Benin"),
              AreaInfo(title: "City", text: "Cotonou"),
              AreaInfo(title: "Age", text: "21"),
              Skills(),
              SizedBox(
                height: defaultPadding,
              ),
              Coding()
            ]),
          ),
        ),
      ]),
    );
  }
}

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Divider(),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: defaultPadding),
        child: Text("Coding", style: Theme.of(context).textTheme.subtitle2),
      ),
      AnimatedLinearProgressIndicator(
        label: "Dart",
        percentage: 0.9,
      ),
      AnimatedLinearProgressIndicator(
        label: "JavaScript",
        percentage: 0.9,
      ),
      AnimatedLinearProgressIndicator(
        label: "Python",
        percentage: 0.8,
      ),
      AnimatedLinearProgressIndicator(
        label: "C++",
        percentage: 0.7,
      ),
      AnimatedLinearProgressIndicator(
        label: "PHP",
        percentage: 0.8,
      ),
      AnimatedLinearProgressIndicator(
        label: "Html",
        percentage: 0.8,
      ),
      AnimatedLinearProgressIndicator(
        label: "Html",
        percentage: 0.65,
      ),
    ]);
  }
}

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
            value: 0.8,
            color: primaryColor,
            backgroundColor: darkColor,
          ),
        ]),
      ),
    );
  }
}
