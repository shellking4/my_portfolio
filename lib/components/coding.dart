import 'package:flutter/material.dart';
import 'package:my_portfolio/components/animated_linear_progress_indicator.dart';
import 'package:my_portfolio/utils/constants.dart';

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
        label: "DART",
        percentage: 0.9,
      ),
      AnimatedLinearProgressIndicator(
        label: "JAVASCRIPT",
        percentage: 0.9,
      ),
      AnimatedLinearProgressIndicator(
        label: "TYPESCRIPT",
        percentage: 0.8,
      ),
      AnimatedLinearProgressIndicator(
        label: "PYTHON",
        percentage: 0.8,
      ),
      AnimatedLinearProgressIndicator(
        label: "Rust",
        percentage: 0.5,
      ),
      AnimatedLinearProgressIndicator(
        label: "HTML",
        percentage: 0.8,
      ),
      AnimatedLinearProgressIndicator(
        label: "CSS",
        percentage: 0.65,
      ),
    ]);
  }
}