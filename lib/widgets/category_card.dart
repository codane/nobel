import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nobel/widgets/category_list_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nobel/providers/nobel_providers.dart';

class CategoryCard extends ConsumerWidget {
  const CategoryCard(
      {super.key, required this.categoryAbbreviation, required this.categoryTitle, required this.categorySvg});

  final String categoryAbbreviation;
  final String categoryTitle;
  final String categorySvg;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref.watch(categoryAbbreviationProvider.notifier).state = categoryAbbreviation;
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CategoryListScreen(categoryAbbreviation: categoryAbbreviation)),
        );
      },
      child: GridTile(
        header: GridTileBar(
          title: Text(
            categoryTitle,
            style: const TextStyle(color: Colors.black),
            ),
        ),
        child: Material(
          elevation: 10,
          borderRadius: const BorderRadius.all(Radius.circular(20),),
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xffD8DAD3),
              borderRadius: BorderRadius.all(Radius.circular(20),),
            ), 
            child: SvgPicture.asset(categorySvg),
          ),
        ),
      ),
    );
  }
}
