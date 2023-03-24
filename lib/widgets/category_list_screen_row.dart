import 'package:flutter/material.dart';
import 'my_back_button.dart';
import 'package:lottie/lottie.dart';


class CategoryListScreenRow extends StatelessWidget {
  const CategoryListScreenRow({super.key, required this.categoryName});

  final String categoryName;

  String detectCategoryName(String abbreaviation) {
    String name = "";
    switch (abbreaviation) {
      case "phy":
        name = "Physics";
        break;
      case "che":
        name = "Chemistry";
        break;
      case "med":
        name = "Medicine";
        break;
      case "lit":
        name = "Literature";
        break;
      case "pea":
        name = "Peace";
        break;
      case "eco":
        name = "Economy";
        break;
    }
    return name;
  }

  String detectCategoryAnimation(String abbreviation) {
    String assetPath = "";
    switch (abbreviation) {
      case "phy":
        assetPath = "assets/animation_physics.json";
        break;
      case "che":
        assetPath = "assets/animation_chemistry.json";
        break;
      case "med":
        assetPath = "assets/animation_medicine.json";
        break;
      case "lit":
        assetPath = "assets/animation_literature.json";
        break;
      case "pea":
        assetPath = "assets/animation_peace.json";
        break;
      case "eco":
        assetPath = "assets/animation_economy.json";
        break;
    }
    return assetPath;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          GestureDetector(
            onTap: (() {
              Navigator.pop(context);
            }),
            child: const MyBackButton(),
          ),
          Text(
            detectCategoryName(categoryName),
            style: const TextStyle(fontSize: 25),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: Lottie.asset(detectCategoryAnimation(categoryName)),
          )
        ],
      ),
    );
  }
}
