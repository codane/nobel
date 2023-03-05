import 'package:freezed_annotation/freezed_annotation.dart';

import '../category/category_model.dart';
import '../motivation/motivation_model.dart';

part 'nobel_prize.freezed.dart';
part 'nobel_prize.g.dart';

@freezed
class NobelPrize with _$NobelPrize {

  factory NobelPrize({
    String? awardYear,
    Category? category,
    String? sortOrder,
    String? portion,
    String? dateAwarded,
    String? prizeStatus,
    Motivation? motivation,
    int? prizeAmount,
    int? prizeAmountAdjusted        
  }) = _NobelPrize;

  factory NobelPrize.fromJson(Map<String, dynamic> json) => _$NobelPrizeFromJson(json);
}