// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'painting_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaintingApi _$PaintingApiFromJson(Map<String, dynamic> json) => _PaintingApi(
  id: (json['id'] as num).toInt(),
  title: LocalizedStringApi.fromJson(json['title'] as Map<String, dynamic>),
  description: json['description'] == null
      ? null
      : LocalizedStringApi.fromJson(
          json['description'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$PaintingApiToJson(_PaintingApi instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
    };
