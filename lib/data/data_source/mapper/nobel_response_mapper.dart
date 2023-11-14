import 'package:nobel/data/data_source/remote/dto/nobel_response_dto.dart';
import 'package:nobel/domain/model/nobel_response_model.dart';

NobelResponseModel toNobelResponseModel(NobelResponseDto dto) =>
    NobelResponseModel(
      laureates: dto.laureates,
    );
