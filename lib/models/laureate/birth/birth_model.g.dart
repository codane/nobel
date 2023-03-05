// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'birth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Birth _$$_BirthFromJson(Map<String, dynamic> json) => _$_Birth(
      date: json['date'] as String?,
      place: json['place'] == null
          ? null
          : Place.fromJson(json['place'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BirthToJson(_$_Birth instance) => <String, dynamic>{
      'date': instance.date,
      'place': instance.place,
    };
