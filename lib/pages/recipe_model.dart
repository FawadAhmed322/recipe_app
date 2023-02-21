import 'package:recipe_app/models/review_model.dart';

class Recipe {
  String? id;
  String? title;
  String? description;
  List<String?>? ingredients;
  List<String?>? instructions;
  int? cookingTime;
  // Strings should be image urls
  List<String?>? images;
  String? cuisine;
  String? mealType;
  List<Review?>? reviews;

  Recipe({
    required this.id,
    required this.title,
    this.description,
    this.ingredients,
    this.instructions,
    this.cookingTime,
    this.images,
    this.cuisine,
    this.mealType,
    this.reviews,
  });
}
