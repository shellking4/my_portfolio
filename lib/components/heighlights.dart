import 'package:flutter/material.dart';
import 'package:my_portfolio/components/animated_counter.dart';
import 'package:my_portfolio/components/responsive.dart';
import 'package:my_portfolio/utils/constants.dart';
import 'heigh_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 30,
                        text: "+",
                      ),
                      label: "GitHub Projects",
                    ),
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 10,
                        text: "+",
                      ),
                      label: "Github Followers",
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                HeighLight(
                      counter: AnimatedCounter(
                        value: 30,
                        text: "+",
                      ),
                      label: "GitHub Projects",
                    ),
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 10,
                        text: "+",
                      ),
                      label: "Github Followers",
                    ),
              ],
            ),
    );
  }
}
