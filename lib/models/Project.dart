// ignore_for_file: non_constant_identifier_names

class Project {
  final String? title, description;

  Project({this.title, this.description});
}

List<Project> demo_projects = [
  Project(
    title: "Compotché Web App - Angular",
    description: "Built with Angular 13. The admin space for the Compotche Plaform. ",
  ),
  Project(
    title: "Songs management web platform  for a gospel band - Laravel",
    description: "Built with Laravel 8. I built the web app to manage the songs and works of a beninese gospel band. You'll find it at https://bit.ly/3mguKwL",
  ),
  Project(
    title: "Compotché Mobile App - Flutter",
    description: "The mobile UI for the online test platform I build",
  ),
];
