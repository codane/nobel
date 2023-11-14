import 'package:equatable/equatable.dart';
import 'package:nobel/domain/model/place_model.dart';

class BirthModel extends Equatable {
  final String? date;
  final PlaceModel? place;

  const BirthModel({
    this.date,
    this.place,
  });

  @override
  List<Object?> get props => [
    date,
    place,
  ];
}
