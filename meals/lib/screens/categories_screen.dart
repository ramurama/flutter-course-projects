import 'package:flutter/material.dart';
import 'package:meals/data/categories_data.dart';
import 'package:meals/data/meals_data.dart';
import 'package:meals/models/category.dart';
import 'package:meals/screens/meals_screen.dart';
import 'package:meals/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void onSelectCategory(Category category) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder:
              (ctx) => MealsScreen(
                title: category.title,
                meals:
                    dummyMeals
                        .where((meal) => meal.categories.contains(category.id))
                        .toList(),
              ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Pick your category')),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children:
            availableCategories
                .map(
                  (category) => CategoryGridItem(
                    category: category,
                    onSelectCategory: onSelectCategory,
                  ),
                )
                .toList(),
      ),
    );
  }
}
