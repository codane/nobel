import 'package:freezed_annotation/freezed_annotation.dart';
import 'laureate/laureate_model.dart';
import 'meta/meta_model.dart';

part 'laureates_response.freezed.dart';
part 'laureates_response.g.dart';

@freezed
class LaureatesResponse with _$LaureatesResponse {

  factory LaureatesResponse({
    List<Laureate>? laureates,
    Meta? meta
  }) = _LaureatesResponse;

  factory LaureatesResponse.fromJson(Map<String, dynamic> json) => _$LaureatesResponseFromJson(json);
}