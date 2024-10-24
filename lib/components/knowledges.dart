import 'package:flutter/material.dart';
import 'package:my_portfolio/components/knowledge_text.dart';
import 'package:my_portfolio/utils/constants.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text("Knowledges",
              style: Theme.of(context).textTheme.titleSmall),
        ),
        KnowledgeText(text: "FastAPI, Python"),
        KnowledgeText(text: "NestJS, TypeScript"),
        KnowledgeText(text: "Actix Web, Rust"),
        KnowledgeText(text: "Flutter, Dart"),
        KnowledgeText(text: "Angular, TypeScript"),
        KnowledgeText(text: "Next.js, TypeScript"),
        KnowledgeText(text: "SvelteKit, TypeScript"),
        KnowledgeText(text: "Git, Github, Bitbucket"),
        KnowledgeText(text: "Linux, Bash"),
        KnowledgeText(text: "DevOps, Docker"),
        KnowledgeText(text: "Heroku, DigitalOcean"),
        KnowledgeText(text: "PostgreSQL, MySQL"),
      ]
    );
  }
}

