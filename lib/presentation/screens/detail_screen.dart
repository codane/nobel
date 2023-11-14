import 'package:flutter/material.dart';
import 'package:nobel/domain/model/laureate_model.dart';
import 'package:nobel/domain/model/nobel_prize_model.dart';
import 'package:nobel/presentation/widgets/biography_container.dart';
import 'package:nobel/presentation/widgets/more_info_container.dart';
import 'package:nobel/presentation/widgets/my_back_button.dart';
import 'package:nobel/presentation/widgets/prize_info_container_row.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.clickedLaureate});

  final LaureateModel? clickedLaureate;

  @override
  Widget build(BuildContext context) {
    final List<NobelPrizeModel>? clickedLaureatePrizes =
        clickedLaureate?.nobelPrizes;

    return Scaffold(
      backgroundColor: const Color(0xffA4C2A5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: (() {
                          Navigator.pop(context);
                        }),
                        child: const MyBackButton(),
                      ),
                    ],
                  ),
                ),
                BiographyContainer(
                    name: "${clickedLaureate?.fullName?.en}",
                    birthDate: "${clickedLaureate?.birth?.date}",
                    birthPlace: "${clickedLaureate?.birth?.place?.country?.en}"),
                const SizedBox(height: 20),
                PrizeInfoContainer(
                  prizeNumber: "${clickedLaureatePrizes?.length}", 
                  prizeCategory: "${clickedLaureatePrizes?[0].category?.en}", 
                  prizeAwardYear: "${clickedLaureatePrizes?[0].awardYear}", 
                  prizeAmount: "${clickedLaureatePrizes?[0].prizeAmount}", 
                  prizeStatus: "${clickedLaureatePrizes?[0].prizeStatus}", 
                  prizeMotivation: "${clickedLaureatePrizes?[0].motivation?.en}"),
                const SizedBox(
                  height: 20,
                ),
                MoreInfoContainer(wikipediaUrl: "${clickedLaureate?.wikipedia?.english}")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
