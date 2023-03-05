import 'package:flutter/material.dart';
import 'package:nobel/widgets/category_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffA4C2A5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, bottom: 30),
                child: Text(
                  "Choose the category and start exploring the world of Nobel laureates🥳",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Expanded(
                  child: Padding(
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
              )),
            ],
          ),
        ),
      ),
    );
  }
}
