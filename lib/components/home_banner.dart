import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/components/responsive.dart';
import 'package:my_portfolio/components/side_menu.dart';
import 'package:my_portfolio/utils/constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/bg.jpeg",
            fit: BoxFit.cover,
          ),
          Container(color: darkColor.withOpacity(0.66)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Discover My Works Universe",
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )
                      : Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                ),
                if (Responsive.isMobileLarge(context))
                  const SizedBox(height: defaultPadding / 2),
                MyBuildAnimatedText(),
                SizedBox(height: defaultPadding),
                if (!Responsive.isMobileLarge(context))
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          SideMenu.launchURL("https://drive.google.com/file/d/1OI7crBHcAup26eucw1HTYhHd-pg5_HtZ/view?usp=sharing");
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: defaultPadding * 2,
                              vertical: defaultPadding),
                          backgroundColor: primaryColor,
                        ),
                        child: Text(
                          "VIEW MY RESUME",
                          style: TextStyle(color: darkColor),
                        ),
                      ),
                      SizedBox(width: defaultPadding,),
                      ElevatedButton(
                        onPressed: () {
                          SideMenu.launchURL(SideMenu.github_profile);
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: defaultPadding * 2,
                              vertical: defaultPadding),
                          backgroundColor: Colors.white,
                        ),
                        child: Text(
                          "VISIT MY GITHUB PROFILE",
                          style: TextStyle(color: darkColor),
                        ),
                      ),
                   ],
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      // it applies same style to all the widgets under it
      style: Theme.of(context).textTheme.subtitle1!,
      maxLines: 1,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) CodeText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          Text("I built "),
          Responsive.isMobile(context)
              ? Expanded(child: AnimatedText())
              : AnimatedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          if (!Responsive.isMobileLarge(context)) CodeText(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          "FastAPI restful apis",
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "NestJS restful apis",
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Django Rest Framework powered resful apis",
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Angular web apps",
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Flutter mobile and web apps",
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Compotché, an online test platform",
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Adécko, a recruitment platform",
          speed: Duration(milliseconds: 60),
        ),
      ],
    );
  }
}

class CodeText extends StatelessWidget {
  const CodeText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: "code",
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(text: ">"),
        ],
      ),
    );
  }
}
