import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: secondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Spacer(flex: 2,),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/my_picture.jpg"),
            ),
            Spacer(),
            Text(
              "Donald KANTI", 
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              "Developper Advocate And Founder Of Syslabs LLC",
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