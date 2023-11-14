import 'package:equatable/equatable.dart';

class CityModel extends Equatable {
  final String? en;

  const CityModel({this.en});

  @override
  List<Object?> get props => [en];
}
