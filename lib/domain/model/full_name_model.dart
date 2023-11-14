import 'package:equatable/equatable.dart';

class FullNameModel extends Equatable {
  final String? en;
  
  const FullNameModel({this.en});
  
  @override
  List<Object?> get props => [en];
}
