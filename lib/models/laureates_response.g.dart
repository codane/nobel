// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'laureates_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LaureatesResponse _$$_LaureatesResponseFromJson(Map<String, dynamic> json) =>
    _$_LaureatesResponse(
      laureates: (json['laureates'] as List<dynamic>?)
          ?.map((e) => Laureate.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LaureatesResponseToJson(
        _$_LaureatesResponse instance) =>
    <String, dynamic>{
      'laureates': instance.laureates,
      'meta': instance.meta,
    };
