import 'package:equatable/equatable.dart';

class WikipediaModel extends Equatable {
  final String? english;

  const WikipediaModel({this.english});

  @override
  List<Object?> get props => [english];
}
