import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:nobel/providers/nobel_providers.dart';
import 'package:nobel/widgets/detail_screen.dart';
import 'package:nobel/widgets/laureate_item.dart';
import 'package:nobel/widgets/my_back_button.dart';
import '../models/laureate/laureate_model.dart';

class CategoryListScreen extends ConsumerStatefulWidget {
  const CategoryListScreen({super.key, required this.categoryAbbreviation});

  final String categoryAbbreviation;

  @override
  ConsumerState<CategoryListScreen> createState() => _CategoryListScreenState();
}

class _CategoryListScreenState extends ConsumerState<CategoryListScreen> {
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

  final ScrollController _controller = ScrollController();
  final List<Laureate> _totalList = [];

  @override
  void initState() {
    _controller.addListener(paginate);
    super.initState();
  }

  void paginate() {
    if (_controller.position.pixels == _controller.position.maxScrollExtent) {
      ref.read(apiOffsetProvider.notifier).state += 15;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final category = ref.read(categoryAbbreviationProvider);
    final laureatesData = ref.watch(laureateDataProvider).laureatesList;
    _totalList.addAll(laureatesData);

    return Scaffold(
      backgroundColor: const Color(0xffA4C2A5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
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
                      detectCategoryName(category),
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
                      child: Lottie.asset(detectCategoryAnimation(category)),
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                    controller: _controller,
                    itemCount: _totalList.length + 1,
                    itemBuilder: (context, index) {
                      if (index < _totalList.length) {
                        final Laureate currentLaureate = _totalList[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                    clickedLaureate: currentLaureate),
                              ),
                            );
                          },
                          child: LaureateItem(
                              laureateName: "${currentLaureate.fullName?.en}",
                              yearAwarded:
                                  "${currentLaureate.nobelPrizes?[0].awardYear}"),
                        );
                      } else {
                        return const Padding(
                          padding: EdgeInsets.symmetric(vertical: 30),
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        );
                      }
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
