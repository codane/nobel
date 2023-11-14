import 'package:equatable/equatable.dart';

class CountryModel extends Equatable {
  final String? en;

  const CountryModel({this.en});

  @override
  List<Object?> get props => [en];
}
