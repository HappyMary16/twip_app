// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Route _$RouteFromJson(Map<String, dynamic> json) => _Route(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  paintings: (json['paintings'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
);

Map<String, dynamic> _$RouteToJson(_Route instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'paintings': instance.paintings,
};
