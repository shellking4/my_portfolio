// ignore_for_file: non_constant_identifier_names

class Recommendation {
  final String? name, source, text;

  Recommendation({this.name, this.source, this.text});
}

final List<Recommendation> demo_recommendations = [
  Recommendation(
    name: "Harris O'Connor",
    source: "Linkedin",
    text: "What strikes me the most about Shellking4's work is his ability to write clean and reusable codes with best practices. He has my highest recommendation.",
  ),
  Recommendation(
    name: "Olatoundji AGBAHOUNGBA",
    source: "Linkedin",
    text: "Shellking is great asset for any organization. His FastAPI and NestJS skills are amazing as well as his professionalism.",
  ),
  Recommendation(
    name: "Cyprien ASSOU",
    source: "Shopify Store Owner",
    text: "I like the way you're doing your project and you taught us. What is really amazing by far is your speed on the keyboard :)",
  ),
  Recommendation(
    name: "Rohan Gurshen",
    source: "Github",
    text: "Very straightforward, professional and also one of the best fullstack developper I've ever met.  It will be great pleasure to work with you one of these days !",
  ),
];
