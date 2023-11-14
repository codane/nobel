import 'package:nobel/data/data_source/remote/dto/birth_dto.dart';
import 'package:nobel/domain/model/birth_model.dart';

BirthModel toBirthModel(BirthDto dto) => BirthModel(
      date: dto.date,
      place: dto.place,
    );
