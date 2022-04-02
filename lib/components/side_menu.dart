import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/components/area_info.dart';
import 'package:my_portfolio/components/coding.dart';
import 'package:my_portfolio/components/knowledges.dart';
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
              Coding(),
              Knowledges(),
              Divider(),
              SizedBox(height: defaultPadding / 2),
              TextButton(
                onPressed: () => {}, 
                child: Row(
                  children: [
                    Text(
                      "DOWNLOAD RESUME",
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1!.color
                      )
                    ),
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
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/twitter.svg"),
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
}




