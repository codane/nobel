import 'package:nobel/data/data_source/remote/dto/motivation_dto.dart';
import 'package:nobel/domain/model/motivation_model.dart';

MotivationModel toMotivationModel(MotivationDto dto) => MotivationModel(
      en: dto.en,
    );
