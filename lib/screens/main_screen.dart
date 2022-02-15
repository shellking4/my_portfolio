import 'package:flutter/material.dart';
import 'package:my_portfolio/components/side_menu.dart';



class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: SideMenu()),
          Expanded(
            flex: 7,
            child: Container(
              color: Colors.blue,
            )),
        ],
      ),
    );
  }
}

