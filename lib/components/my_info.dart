import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.1,
      child: Container(
        color: secondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Spacer(flex: 2,),
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("assets/images/profile-pic.png"),
            ),
            Spacer(),
            Text(
              "Donald KANTI aka Shellking4", 
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Text(
              "Developer Advocate And Founder @ Metatronicx",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5
              )
            ),
            Spacer(flex: 2,),
          ],
        ),
      ),
    );
  }
}