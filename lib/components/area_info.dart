import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/constants.dart';

class AreaInfo extends StatelessWidget {
  const AreaInfo({
    Key? key, this.title, this.text,
  }) : super(key: key);

  final String? title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title!,
            style: TextStyle(
              color: Colors.white
            )
          ),
          Text(
            text!
          ),
        ],
      ),
    );
  }
}