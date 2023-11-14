import 'package:equatable/equatable.dart';

class MotivationModel extends Equatable {
  final String? en;

  const MotivationModel({this.en});

  @override
  List<Object?> get props => [en];
}
