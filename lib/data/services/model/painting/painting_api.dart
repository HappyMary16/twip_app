import 'package:freezed_annotation/freezed_annotation.dart';

import '../localized_string/localized_string_api.dart';

part 'painting_api.freezed.dart';
part 'painting_api.g.dart';

@freezed
abstract class PaintingApi with _$PaintingApi {
  const factory PaintingApi({
    required int id,
    required LocalizedStringApi title,
    required LocalizedStringApi? description})
  = _PaintingApi;

  factory PaintingApi.fromJson(Map<String, dynamic> json) =>
      _$PaintingApiFromJson(json);
}