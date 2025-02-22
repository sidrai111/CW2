import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> recipes = [
    {'name': 'Pancakes', 'ingredients': 'Flour, Milk, Eggs, Sugar', 'instructions': 'Mix all ingredients and cook on a pan.'},
    {'name': 'Spaghetti', 'ingredients': 'Pasta, Tomato Sauce, Garlic', 'instructions': 'Boil pasta, prepare sauce, and mix together.'},
    {'name': 'Salad', 'ingredients': 'Lettuce, Tomato, Cucumber, Dressing', 'instructions': 'Chop ingredients and mix with dressing.'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Recipe Book')),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes[index]['name']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(recipe: recipes[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
