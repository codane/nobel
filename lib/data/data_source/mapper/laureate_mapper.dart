import 'package:nobel/data/data_source/remote/dto/laureate_dto.dart';
import 'package:nobel/domain/model/laureate_model.dart';

LaureateModel toLaureateModel(LaureateDto dto) => LaureateModel(
      id: dto.id,
      fullName: dto.fullName,
      gender: dto.gender,
      birth: dto.birth,
      wikipedia: dto.wikipedia,
      nobelPrizes: dto.nobelPrizes,
    );
