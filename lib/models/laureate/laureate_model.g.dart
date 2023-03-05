// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'laureate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Laureate _$$_LaureateFromJson(Map<String, dynamic> json) => _$_Laureate(
      id: json['id'] as String?,
      fullName: json['fullName'] == null
          ? null
          : FullName.fromJson(json['fullName'] as Map<String, dynamic>),
      fileName: json['fileName'] as String?,
      gender: json['gender'] as String?,
      birth: json['birth'] == null
          ? null
          : Birth.fromJson(json['birth'] as Map<String, dynamic>),
      wikipedia: json['wikipedia'] == null
          ? null
          : Wikipedia.fromJson(json['wikipedia'] as Map<String, dynamic>),
      wikidata: json['wikidata'] == null
          ? null
          : Wikidata.fromJson(json['wikidata'] as Map<String, dynamic>),
      nobelPrizes: (json['nobelPrizes'] as List<dynamic>?)
          ?.map((e) => NobelPrize.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LaureateToJson(_$_Laureate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'fileName': instance.fileName,
      'gender': instance.gender,
      'birth': instance.birth,
      'wikipedia': instance.wikipedia,
      'wikidata': instance.wikidata,
      'nobelPrizes': instance.nobelPrizes,
    };
