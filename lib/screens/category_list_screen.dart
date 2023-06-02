import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nobel/providers/nobel_providers.dart';
import 'package:nobel/screens/detail_screen.dart';
import 'package:nobel/theme/nobel_palette.dart';
import 'package:nobel/widgets/laureate_item.dart';
import '../models/laureate/laureate_model.dart';
import '../widgets/category_list_screen_row.dart';

class CategoryListScreen extends ConsumerStatefulWidget {
  const CategoryListScreen({super.key, required this.categoryAbbreviation});

  final String categoryAbbreviation;

  @override
  ConsumerState<CategoryListScreen> createState() => _CategoryListScreenState();
}

class _CategoryListScreenState extends ConsumerState<CategoryListScreen> {
  
  final ScrollController _controller = ScrollController();
  final List<Laureate> _totalList = [];


  @override
  void initState() {
    _controller.addListener(_paginate);
    super.initState();
  }

  void _paginate() {
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
      backgroundColor: NobelPalette.nobelGreen,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CategoryListScreenRow(categoryName: category,),
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
