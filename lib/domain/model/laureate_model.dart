import 'package:equatable/equatable.dart';
import 'package:nobel/domain/model/birth_model.dart';
import 'package:nobel/domain/model/full_name_model.dart';
import 'package:nobel/domain/model/nobel_prize_model.dart';
import 'package:nobel/domain/model/wikipedia_model.dart';

class LaureateModel extends Equatable {
  final String? id;
  final FullNameModel? fullName;
  final String? gender;
  final BirthModel? birth;
  final WikipediaModel? wikipedia;
  final List<NobelPrizeModel>? nobelPrizes;
  
  const LaureateModel({
    this.id,
    this.fullName,
    this.gender,
    this.birth,
    this.wikipedia,
    this.nobelPrizes,
  });
  
  @override
  List<Object?> get props => [
    id,
    fullName,
    gender,
    birth,
    wikipedia,
    nobelPrizes,
  ];
}
