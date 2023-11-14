import 'package:equatable/equatable.dart';

class CategoryModel extends Equatable {
  final String? en;

  const CategoryModel({this.en});

  @override
  List<Object?> get props => [en];
}
