import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/constants.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
        child: Text("About Me", style: Theme.of(context).textTheme.subtitle2),
      ),
      Text(
        "I am a young developper. A little bit shy but not much 🤓 Most of all, I am passionate about web and mobile technologies, resful and graphql apis, microservices and everything related to the cloud ☁️. I am strongly 💪 eager to help and impact the world 🌍 with little I know and gain more experiences.",
        textAlign: TextAlign.justify,
      ),
      SizedBox(height: defaultPadding / 2),
      Divider(),
    ]);
  }
}
