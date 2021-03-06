// ignore_for_file: avoid_web_libraries_in_flutter, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/components/about_me.dart';
import 'package:my_portfolio/components/area_info.dart';
import 'package:my_portfolio/components/coding.dart';
import 'package:my_portfolio/components/knowledges.dart';
import 'package:my_portfolio/components/my_info.dart';
import 'package:my_portfolio/components/skills.dart';
import 'package:my_portfolio/utils/constants.dart';
import 'dart:html' as html;

import 'package:url_launcher/url_launcher.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  static const String github_profile = 'https://github.com/shellking4';
  static const String linkedin_profile =
      "https://www.linkedin.com/in/donald-kanti/";
  static const String bitbucket_profile = "https://bitbucket.org/shellking4/";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: <Widget>[
        MyInfo(),
        Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(defaultPadding),
            child: Column(children: <Widget>[
              AboutMe(),
              SizedBox(
                height: defaultPadding,
              ),
              AreaInfo(title: "Residence", text: "Benin"),
              AreaInfo(title: "City", text: "Cotonou"),
              AreaInfo(title: "Age", text: "21"),
              Skills(),
              SizedBox(
                height: defaultPadding,
              ),
              Coding(),
              Knowledges(),
              Divider(),
              SizedBox(height: defaultPadding / 2),
              TextButton(
                  onPressed: () {
                    launchURL("https://mega.nz/file/IwkC3CKQ#b-jRmw6tfNS7hqPm3kCZO9zQBb05mfOl6uiFCGUnnsI");
                  },
                  child: Row(
                    children: [
                      Text("DOWNLOAD RESUME",
                          style: TextStyle(
                              color: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .color)),
                      SizedBox(width: defaultPadding / 2),
                      SvgPicture.asset("assets/icons/download.svg")
                    ],
                  )),
              Container(
                margin: EdgeInsets.only(top: defaultPadding),
                color: Color(0xFF24242E),
                child: Row(
                  children: [
                    Spacer(),
                    IconButton(
                      onPressed: () {
                        launchURL(linkedin_profile);
                      },
                      icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                    ),
                    IconButton(
                      onPressed: () {
                        launchURL(github_profile);
                      },
                      icon: SvgPicture.asset("assets/icons/github.svg"),
                    ),
                    IconButton(
                      onPressed: () {
                        launchURL(bitbucket_profile);
                      },
                      icon: SvgPicture.asset("assets/icons/bitbucket.svg"),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ]),
    );
  }

  static void downloadFile(String url) {
    html.AnchorElement anchorElement = html.AnchorElement(href: url);
    anchorElement.download = url;
    anchorElement.click();
  }

  static void launchURL(String url) async {
    if (!await launch(url)) throw 'Could not launch $url';
  }
}
