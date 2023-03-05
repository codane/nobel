// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nobel_prize.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NobelPrize _$$_NobelPrizeFromJson(Map<String, dynamic> json) =>
    _$_NobelPrize(
      awardYear: json['awardYear'] as String?,
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      sortOrder: json['sortOrder'] as String?,
      portion: json['portion'] as String?,
      dateAwarded: json['dateAwarded'] as String?,
      prizeStatus: json['prizeStatus'] as String?,
      motivation: json['motivation'] == null
          ? null
          : Motivation.fromJson(json['motivation'] as Map<String, dynamic>),
      prizeAmount: json['prizeAmount'] as int?,
      prizeAmountAdjusted: json['prizeAmountAdjusted'] as int?,
    );

Map<String, dynamic> _$$_NobelPrizeToJson(_$_NobelPrize instance) =>
    <String, dynamic>{
      'awardYear': instance.awardYear,
      'category': instance.category,
      'sortOrder': instance.sortOrder,
      'portion': instance.portion,
      'dateAwarded': instance.dateAwarded,
      'prizeStatus': instance.prizeStatus,
      'motivation': instance.motivation,
      'prizeAmount': instance.prizeAmount,
      'prizeAmountAdjusted': instance.prizeAmountAdjusted,
    };
