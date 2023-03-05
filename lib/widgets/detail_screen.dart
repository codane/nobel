import 'package:flutter/material.dart';
import 'package:nobel/models/laureate/laureate_model.dart';
import 'package:nobel/models/laureate/nobel_prize/nobel_prize.dart';
import 'package:nobel/widgets/biography_container.dart';
import 'package:nobel/widgets/more_info_container.dart';
import 'package:nobel/widgets/my_back_button.dart';
import 'package:nobel/widgets/prize_info_container_row.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.clickedLaureate});

  final Laureate? clickedLaureate;

  @override
  Widget build(BuildContext context) {
    final List<NobelPrize>? clickedLaureatePrizes =
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
