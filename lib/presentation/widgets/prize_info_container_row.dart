import 'package:flutter/material.dart';
import 'package:nobel/common/theme/nobel_palette.dart';
import 'package:nobel/presentation/widgets/prize_info_row.dart';

class PrizeInfoContainer extends StatelessWidget {
  const PrizeInfoContainer({
    super.key, 
    required this.prizeNumber, 
    required this.prizeCategory, 
    required this.prizeAwardYear, 
    required this.prizeAmount,
    required this.prizeStatus,
    required this.prizeMotivation
    });

  final String prizeNumber;
  final String prizeCategory;
  final String prizeAwardYear;
  final String prizeAmount;
  final String prizeStatus;
  final String prizeMotivation;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: NobelPalette.nobelGrey,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "PRIZE INFO",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          PrizeInfoRow(prizeRowText: "Number of prizes won: $prizeNumber"),
          PrizeInfoRow(prizeRowText: "Category: $prizeCategory"),
          PrizeInfoRow(prizeRowText: "Award year: $prizeAwardYear"),
          PrizeInfoRow(prizeRowText: "Prize amount: $prizeAmount\$"),
          PrizeInfoRow(prizeRowText: "Reason: $prizeMotivation"),          
        ],
      ),
    );
  }
}
