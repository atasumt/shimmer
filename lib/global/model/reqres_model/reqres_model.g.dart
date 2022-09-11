// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reqres_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReqresModel _$ResresModelFromJson(Map<String, dynamic> json) => ReqresModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      support: json['support'] == null
          ? null
          : Support.fromJson(json['support'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResresModelToJson(ReqresModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'support': instance.support,
    };
