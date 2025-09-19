// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'path.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Path _$PathFromJson(Map<String, dynamic> json) => _Path(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  paintings: (json['paintings'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
);

Map<String, dynamic> _$PathToJson(_Path instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'paintings': instance.paintings,
};
