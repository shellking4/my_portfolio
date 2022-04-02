import 'package:flutter/material.dart';
import 'package:my_portfolio/components/heighlights.dart';
import 'package:my_portfolio/components/home_banner.dart';
import 'package:my_portfolio/components/my_projects.dart';
import 'package:my_portfolio/components/recommendations.dart';
import 'package:my_portfolio/screens/main_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighLightsInfo(),
        MyProjects(),
        Recommendations(),
      ],
    );
  }
}
