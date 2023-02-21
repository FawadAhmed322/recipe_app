import 'package:flutter/material.dart';
import 'package:recipe_app/pages/recipe_model.dart';
import 'package:uuid/uuid.dart';
import 'package:recipe_app/models/review_model.dart';

class AddRecipePage extends StatefulWidget {
  const AddRecipePage({Key? key}) : super(key: key);

  @override
  _AddRecipePageState createState() => _AddRecipePageState();
}

class _AddRecipePageState extends State<AddRecipePage> {
  final _formKey = GlobalKey<FormState>();
  final _uuid = const Uuid();

  String? _id;
  String? _title;
  String? _description;
  List<String?>? _ingredients;
  List<String?>? _instructions;
  int? _cookingTime;
  List<String?>? _images;
  String? _cuisine;
  String? _mealType;
  List<Review?>? _reviews;

  @override
  void initState() {
    super.initState();
    _id = _uuid.v4(); // generate a random UUID
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Recipe'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(labelText: 'Title'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a title';
                  }
                  return null;
                },
                onSaved: (value) {
                  _title = value;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Description'),
                onSaved: (value) {
                  _description = value;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Ingredients'),
                maxLines: null,
                keyboardType: TextInputType.multiline,
                onSaved: (value) {
                  _ingredients =
                      value!.split('\n').map((i) => i.trim()).toList();
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Instructions'),
                maxLines: null,
                keyboardType: TextInputType.multiline,
                onSaved: (value) {
                  _instructions =
                      value!.split('\n').map((i) => i.trim()).toList();
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Cooking Time'),
                keyboardType: TextInputType.number,
                onSaved: (value) {
                  _cookingTime = int.tryParse(value!) ?? 0;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Images (comma separated)'),
                maxLines: null,
                keyboardType: TextInputType.multiline,
                onSaved: (value) {
                  _images = value!.split(',').map((i) => i.trim()).toList();
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Cuisine'),
                onSaved: (value) {
                  _cuisine = value;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Meal Type'),
                onSaved: (value) {
                  _mealType = value;
                },
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();

                    final recipe = Recipe(
                      id: _id,
                      title: _title!,
                      description: _description,
                      ingredients: _ingredients,
                      instructions: _instructions,
                      cookingTime: _cookingTime,
                      images: _images,
                      cuisine: _cuisine,
                      mealType: _mealType,
                      reviews: _reviews,
                    );

                    // TODO: save recipe to database or send to server

                    // navigate back to previous page
                    Navigator.pop(context);
                  }
                },
                child: const Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
