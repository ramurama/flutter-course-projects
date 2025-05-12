import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/screens/meal_details_screen.dart';
import 'package:meals/widgets/meal_item_trait.dart';
import 'package:transparent_image/transparent_image.dart';

class MealItem extends StatelessWidget {
  final Meal meal;

  const MealItem({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    void selectMeal(Meal meal) {
      Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (ctx) => MealDetailsScreen(meal, on)));
    }

    return InkWell(
      onTap: () => selectMeal(meal),
      borderRadius: BorderRadius.circular(16),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        clipBehavior: Clip.hardEdge,
        elevation: 4,
        child: Column(
          children: [
            Stack(
              children: [
                Hero(
                  tag: meal.id,
                  child: FadeInImage(
                    placeholder: MemoryImage(kTransparentImage),
                    image: NetworkImage(meal.imageUrl),
                    fit: BoxFit.cover,
                    height: 250,
                    width: double.infinity,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 5,
                    ),
                    color: Colors.black54,
                    child: Column(
                      children: [
                        Text(
                          meal.title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                          ),
                          overflow: TextOverflow.fade,
                          softWrap: true,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MealItemTrait(
                              icon: Icons.schedule,
                              label: '${meal.duration} min',
                            ),
                            const Spacer(),
                            MealItemTrait(
                              icon: Icons.work,
                              label: meal.complexity.name,
                            ),
                            const Spacer(),
                            MealItemTrait(
                              icon: Icons.attach_money,
                              label: meal.affordability.name,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
