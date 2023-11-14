import 'package:flutter/material.dart';
import 'category_card.dart';

class HomeScreenGridView extends StatelessWidget {
  const HomeScreenGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 15,
          children: const [
            CategoryCard(
                categoryAbbreviation: "phy",
                categoryTitle: "Physics",
                categorySvg: "assets/physics.svg"),
            CategoryCard(
                categoryAbbreviation: "che",
                categoryTitle: "Chemistry",
                categorySvg: "assets/chemistry.svg"),
            CategoryCard(
                categoryAbbreviation: "med",
                categoryTitle: "Medicine",
                categorySvg: "assets/medicine.svg"),
            CategoryCard(
                categoryAbbreviation: "lit",
                categoryTitle: "Literature",
                categorySvg: "assets/literature.svg"),
            CategoryCard(
                categoryAbbreviation: "pea",
                categoryTitle: "Peace",
                categorySvg: "assets/peace.svg"),
            CategoryCard(
                categoryAbbreviation: "eco",
                categoryTitle: "Economic Sciences",
                categorySvg: "assets/economy.svg"),
          ]),
    );
  }
}
