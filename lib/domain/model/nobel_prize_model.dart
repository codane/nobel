import 'package:equatable/equatable.dart';
import 'package:nobel/domain/model/category_model.dart';
import 'package:nobel/domain/model/motivation_model.dart';


class NobelPrizeModel extends Equatable {
  final String? awardYear;
  final CategoryModel? category;
  final String? prizeStatus;
  final MotivationModel? motivation;
  final int? prizeAmount;

  const NobelPrizeModel({
    this.awardYear,
    this.category,
    this.prizeStatus,
    this.motivation,
    this.prizeAmount,
  });

  @override
  List<Object?> get props => [
        awardYear,
        category,
        prizeStatus,
        motivation,
        prizeAmount,
      ];
}
